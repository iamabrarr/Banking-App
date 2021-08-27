import 'package:flutter/material.dart';

class Users {
  String name, image, balance, cardname;
  int cardno;
  bool recieve;
  Users({
    this.name,
    this.image,
    this.balance,
    this.cardname,
    this.cardno,
    this.recieve,
  });
}

List<Users> details = [user1, user2, user3, user4, user5,user6];
Users user1 = Users(
    name: 'Amad Zahid',
    image: 'assets/images/amad.jpg',
    balance: '\$+500.00',
    recieve : true,
    cardname: 'Visa',
    cardno: 7632);
Users user2 = Users(
    name: 'Ali Khan',
    image: 'assets/images/ali.jpg',
    balance: '\$-776.00',
    recieve : false,
    cardname: 'Mastercard',
    cardno: 5589);
Users user3 = Users(
  name: 'Hamza Shehroz',
  image: 'assets/images/hamza.jpg',
  balance: '\$-207.00',
  recieve : false,
  cardname: 'Mastercard',
  cardno: 3168,
);
Users user4 = Users(
    name: 'Rashid Mirani',
    image: 'assets/images/rashid.jpg',
    balance: '\$+396.00',
    recieve : true,
    cardname: 'Visa',
    cardno: 4596);
Users user5 = Users(
  name: 'Rayyan Maqsood',
  image: 'assets/images/rayyan.jpg',
  balance: '\$-800.00',
  recieve : false,
  cardname: 'Mastercard',
  cardno: 9573,
);
Users user6 = Users(
  name: 'Uzair Mushtaq',
  image: 'assets/images/uzair.jpg',
  balance: '\$+564.00',
  recieve: true,
  cardname: 'Visa',
  cardno: 7564,
);
