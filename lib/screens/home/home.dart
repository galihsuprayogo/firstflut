import 'package:firstflut/routes/route_name.dart';
import 'package:firstflut/screens/home/localwidgets/photo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OurHome extends StatelessWidget {
  const OurHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Home Sweet Home"),
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        onPressed: () {
                          Get.offAllNamed(RouteName.login);
                        },
                        icon: Icon(Icons.logout_rounded))
                  ],
                )),
          ],
        ),
        body: SafeArea(child: OurPhotoWidget()));
  }
}
