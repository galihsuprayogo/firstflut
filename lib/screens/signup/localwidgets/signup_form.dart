import 'package:firstflut/controllers/user_controller.dart';
import 'package:firstflut/routes/route_name.dart';
import 'package:firstflut/services/auth_services.dart';
import 'package:firstflut/widgets/container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class OurSignUpForm extends StatelessWidget {
  // const OurSignUpForm({Key? key}) : super(key: key);

  final userController = Get.find<UserController>();

  void onReset(x, y, z) {
    x.clear();
    y.clear();
    z.clear();
  }

  @override
  Widget build(BuildContext context) {
    return OurContiner(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    style: ButtonStyle(alignment: Alignment.topLeft),
                    child: Text(
                      "Back",
                      style: TextStyle(
                        color: HexColor("#505A14"),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              )),
          SizedBox(height: 20.0),
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
          TextFormField(
            controller: userController.confirm,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: HexColor("#505A14"),
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 18.0),
                hintText: "Confirmation Password"),
            obscureText: true,
            cursorColor: HexColor("#505A14"),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(HexColor("#505A14"))),
            onPressed: () {
              AuthServices.signUp(
                  userController.email.text, userController.password.text);
              onReset(userController.email, userController.password,
                  userController.confirm);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 100),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 13.5,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
