import 'package:bank_app/mainScreen/components/MainDrawer.dart';
import 'package:flutter/material.dart';
import 'HomeBody.dart';
import 'package:get/get.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.isDarkMode? Colors.black : Colors.white,
      drawer: MainDrawer(),
      appBar: buildAppBar(),
      body: Body(),
    );
  }
  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      toolbarHeight: 60,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
            icon: ClipOval(
                child: Image.asset(
              'assets/images/abrar.jpg',
              fit: BoxFit.cover,
            )),
            onPressed: () {
             
            })
      ],
    );
  }
}
