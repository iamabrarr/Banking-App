import 'package:flutter/material.dart';
class CardDetails extends StatelessWidget {
  final String title,cardno,balance;

  const CardDetails({
    Key key, this.title, this.cardno, this.balance,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
           scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 140,
                      width: 270,
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: SizedBox(
                              height: 40,
                              width: 40,
                              child: Image.asset(
                                'assets/icons/mastercard.png',
                              )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top : 10,left: 15.0),
                          child: Text(
                            '...4572',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 70.0, left: 20),
                        child: Text(
                          'Current balance',
                          style: TextStyle(color: Colors.white60),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top : 5,left : 20.0),
                        child: Text(
                          '\$ 2345.00',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ])
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left : 15.0,top: 20),
                child: Stack(
                    children: [
                      Container(
                        height: 140,
                        width: 270,
                        decoration: BoxDecoration(
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: SizedBox(
                                height: 40,
                                width: 40,
                                child: Image.asset(
                                  'assets/icons/visacard.png',
                                )
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top : 10,left: 15.0),
                            child: Text(
                              '...6821',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 70.0, left: 20),
                          child: Text(
                            'Current balance',
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top : 5,left : 20.0),
                          child: Text(
                            '\$ 1900.00',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ])
                    ],
                  ),
              ),
              SizedBox(width : 20)
            ],
          ),
        ),
      ],
    );
  }
  }
