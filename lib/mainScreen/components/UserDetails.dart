import 'package:bank_app/models/Users.dart';
import 'package:flutter/material.dart';

class UserDetails extends StatelessWidget {
  final Users user;
  const UserDetails({
    Key key,
    this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20),
              child: Container(
                height: 45,
                width: 45,
                child: ClipOval(child: Image.asset(user.image,fit: BoxFit.cover,)),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 20),
                  child: Text(
                    user.name,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800]),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Text(
                        user.recieve ? 'Recieved' : 'Sent',
                        style:
                            TextStyle(fontSize: 12, color: Colors.grey[700]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 6, bottom: 5, left: 5, right: 5),
                      child: Container(
                        alignment: Alignment.center,
                        height: 1,
                        width: 15,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(user.cardname,
                        style:
                            TextStyle(fontSize: 12, color: Colors.grey[700])),
                    SizedBox(width: 5),
                    Text(
                      '.  ${user.cardno}',
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
                alignment: Alignment.center,
                height: 30,
                width: 70,
                child: Text(user.balance,
                    style: TextStyle(
                        fontSize: 15,
                        color: user.recieve ? Colors.green : Colors.red)))
          ],
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(
            left: 80.0,
          ),
          child: Container(
            height: 2,
            width: double.infinity,
            color: Colors.grey[300],
          ),
        ),
        SizedBox(height : 10),
      ],
    );
  }
}
