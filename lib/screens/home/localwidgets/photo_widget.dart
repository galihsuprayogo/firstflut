import 'dart:io';

import 'package:firstflut/controllers/photo_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

class OurPhotoWidget extends StatelessWidget {
  // const OurPhotoWidget({Key? key}) : super(key: key);
  final photoController = Get.put(PhotoController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => photoController.imagePath.value == ''
                  ? Text('Lets upload your image !',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))
                  : SafeArea(
                      child: Padding(
                      padding: EdgeInsets.all(40.0),
                      child: Image.file(File(photoController.imagePath.value)),
                    ))),
              Obx(() => photoController.imageSize.value == ''
                  ? Text('')
                  : Text('Size : ${photoController.imageSize.value}',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.black))),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      photoController.getImage(ImageSource.camera);
                    },
                    child: Text('Camera'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor("#505A14"))),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      photoController.getImage(ImageSource.gallery);
                    },
                    child: Text('Gallery'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor("#505A14"))),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      photoController.fetchPhoto(
                          photoController.imagePath.value,
                          photoController.imageSize.value);
                    },
                    child: Text('post To API'),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            HexColor("#505A14"))),
                  )
                ],
              )
            ]),
      ),
    );
  }
}
