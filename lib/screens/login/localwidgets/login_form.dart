import 'package:firstflut/controllers/user_controller.dart';
import 'package:firstflut/routes/route_name.dart';
import 'package:firstflut/services/auth_services.dart';
import 'package:firstflut/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class OurLoginForm extends StatelessWidget {
  // const OurLoginForm({Key? key}) : super(key: key);
  final userController = Get.find<UserController>();

  void onReset(x, y) {
    x.clear();
    y.clear();
  }

  @override
  Widget build(BuildContext context) {
    return OurContiner(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: Image(image: AssetImage('assets/img/suicodex.png'))),
          TextFormField(
            controller: userController.email,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.alternate_email,
                  color: HexColor("#505A14"),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 18.0),
                hintText: "Email"),
            cursorColor: HexColor("#505A14"),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: userController.password,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: HexColor("#505A14"),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 18.0),
                hintText: "Password"),
            obscureText: true,
            cursorColor: HexColor("#505A14"),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(HexColor("#505A14"))),
            onPressed: () {
              AuthServices.signIn(
                  userController.email.text, userController.password.text);
              onReset(userController.email, userController.password);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                "Log in",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13.5,
                ),
              ),
            ),
          ),
          TextButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(HexColor("#505A14"))),
              onPressed: () {
                Get.toNamed(RouteName.signup);
              },
              child: Text("Don't have an account? Sign up here !"))
        ],
      ),
    );
  }
}
