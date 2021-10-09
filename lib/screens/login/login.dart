import 'package:firstflut/screens/login/localwidgets/login_form.dart';
import 'package:flutter/material.dart';

class OurLogin extends StatelessWidget {
  const OurLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: ListView(
            padding: EdgeInsets.all(20.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 178.0),
                child: OurLoginForm(),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
