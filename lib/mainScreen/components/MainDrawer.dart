import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

     return SafeArea(
      child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: Container(
                height: 80,
                width: 80,
                child: ClipOval(
                    child: Image.asset(
                  'assets/images/abrar.jpg',
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Text(
                'Abrar Ahmad',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'abrarahmad4293@gmail.com',
                  ),
                ),
                Spacer(),
                IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {}),
              ],
            ),
            Container(
              height: 2,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child : Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 20,
                          color: Colors.grey[500],
                        ),
                      ],
                    ),
                    child: FlatButton(
                      onPressed: (){
                      
                      },
                      child: Text(
                        'Light',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 5,right: 20),
                  child: Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 20,
                            color: Colors.grey[500],
                          ),
                        ],
                      ),
                      child: FlatButton(
                        onPressed: () {
                           Get.isDarkMode?
                    Get.changeTheme(ThemeData.dark()) : 
                    Get.changeTheme(ThemeData.light());
                        },
                        child: Text(
                          'Dark',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                ),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
