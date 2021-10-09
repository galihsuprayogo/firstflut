import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class PhotoController extends GetxController {
  var imagePath = ''.obs;
  var imageSize = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().getImage(source: imageSource);
    if (pickedFile != null) {
      imagePath.value = pickedFile.path;
      imageSize.value = ((File(imagePath.value).lengthSync()) / 1024 / 1024)
              .toStringAsFixed(2) +
          " mb";
      Get.snackbar('Success', 'image selected',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.green,
          colorText: Colors.white);
    } else {
      Get.snackbar('Error', 'no image selected',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }

  void fetchPhoto(String x, String y) async {
    if (x != '') {
      Uri url = Uri.parse(
          "https://first-flutter-authentication-default-rtdb.firebaseio.com/images.json");
      try {
        await http.post(url,
            body: json.encode({
              "image_path": x,
              "image_size": y,
            }));
        Get.snackbar('Success', 'image uploaded',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.green,
            colorText: Colors.white);
      } catch (e) {
        print(e);
        Get.snackbar('Error', 'Terjadi Kesalahan',
            snackPosition: SnackPosition.TOP,
            backgroundColor: Colors.red,
            colorText: Colors.white);
      }
    } else {
      Get.snackbar('Error', 'Photo belum di pilih',
          snackPosition: SnackPosition.TOP,
          backgroundColor: Colors.red,
          colorText: Colors.white);
    }
  }
}
