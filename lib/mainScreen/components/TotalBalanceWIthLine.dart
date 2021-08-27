import 'dart:ui';
import 'package:bank_app/models/Users.dart';
import 'package:bank_app/models/Users.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'CardDetails.dart';
import 'UserDetails.dart';
import 'package:get/get.dart';

class TotalBalanceWithLine extends StatelessWidget {
  const TotalBalanceWithLine({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total balance',
              style: TextStyle(
                  color: Colors.grey[600], fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              '\$4036.00',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Get.isDarkMode ? Colors.white : Colors.black),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 10),
        child: Container(
          height: 2,
          width: double.infinity,
          color: Colors.grey[300],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 20),
        child: Row(
          children: [
            Text(
              'Your portfolio',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.withOpacity(0.20),
                ),
                child: IconButton(
                  alignment: Alignment.center,
                  icon: Icon(
                    Icons.list,
                    size: 25,
                    color: Colors.grey[600],
                  ),
                  onPressed: () {},
                ),
              ),
            )
          ],
        ),
      ),
      CardDetails(),
      Padding(
        padding: const EdgeInsets.only(top: 20, left: 20),
        child: Text(
          'Today',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height: 10),
      Column(children: [
        ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: details.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return UserDetails(user: details[index]);
            })
      ])
    ]);
  }
}
