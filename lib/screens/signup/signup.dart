import 'package:firstflut/screens/signup/localwidgets/signup_form.dart';
import 'package:flutter/material.dart';

class OurSignUp extends StatelessWidget {
  const OurSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 168.0),
                child: OurSignUpForm(),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
