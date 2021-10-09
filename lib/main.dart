import 'package:firstflut/binding/instance_binding.dart';
import 'package:firstflut/routes/route_name.dart';
import 'package:firstflut/screens/home/home.dart';
import 'package:firstflut/screens/login/login.dart';
import 'package:firstflut/screens/signup/signup.dart';
import 'package:firstflut/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: OurTheme().buildTheme(),
      initialRoute: RouteName.login,
      getPages: [
        GetPage(
            name: RouteName.login,
            page: () => OurLogin(),
            binding: InstanceBinding()),
        GetPage(
            name: RouteName.signup,
            page: () => OurSignUp(),
            binding: InstanceBinding()),
        GetPage(name: RouteName.home, page: () => OurHome())
      ],
    );
  }
}
