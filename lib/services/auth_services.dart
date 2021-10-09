import 'package:firebase_auth/firebase_auth.dart';
import 'package:firstflut/config/api.dart';
import 'package:firstflut/routes/route_name.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class AuthServices {
  static Future<Map<String, dynamic>> signUp(
      String email, String password) async {
    Map<String, dynamic> jsonString;
    Uri url = Uri.parse('${Api.endPoint}signUp?key=${Api.apiKEY}');
    try {
      var response = await http.post(url,
          body: json.encode({
            "email": email,
            "password": password,
            "returnSecureToken": true
          }));
      jsonString = json.decode(response.body);
      if (jsonString.containsKey('idToken')) {
        Get.offNamed(RouteName.login);
      } else {
        print('error');
      }
      return jsonString;
    } catch (e) {
      print("error catch $e");
      throw e;
    }
  }

  static Future<Map<String, dynamic>> signIn(
      String email, String password) async {
    Map<String, dynamic> jsonString;
    Uri url = Uri.parse('${Api.endPoint}signInWithPassword?key=${Api.apiKEY}');
    try {
      var response = await http.post(url,
          body: json.encode({
            "email": email,
            "password": password,
            "returnSecureToken": true
          }));
      jsonString = json.decode(response.body);
      if (jsonString.containsKey('idToken')) {
        Get.offNamed(RouteName.home);
        print(jsonString);
      } else {
        print('error');
      }
      return jsonString;
    } catch (e) {
      print("error catch $e");
      throw e;
    }
  }

  static Future<void> signOut() async {
    // await FirebaseAuth.instance.signOut();
    var currentUser = FirebaseAuth.instance.currentUser;
    print('status : $currentUser');
  }
}
