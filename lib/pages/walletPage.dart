import 'package:flutter/material.dart';

class WalletPage extends StatefulWidget {
  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(backgroundColor: Colors.orange[900],      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Column(
      children: [
        Stack(children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(color: Colors.orange[900]),
            child: Column(
              children: [
                Text('12 սեպ 2020 11։34',
                    style: TextStyle(color: Colors.white38)),
                Text('2 048.00 դ',
                    style: TextStyle(fontSize: 35, color: Colors.white)),
                Text('Ընթացիկ հաշվեկշիռ',
                    style: TextStyle(color: Colors.white38)),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Text(
                    'Համալրել',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  color: Colors.white38,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Icon(Icons.notifications, size: 30, color: Colors.white),
          ),
        ]),
        Text("Դրամապանակ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800)),
        Expanded(
          child: GridView.count(
            shrinkWrap: true,
            padding: const EdgeInsets.all(30),
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            crossAxisCount: 3,
            childAspectRatio: 0.7,
            children: <Widget>[
              Container(
                height: 150,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.25,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          elevation: 3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_downward,
                                color: Colors.orange[900],
                              ),
                              Text(
                                'Համալրել',
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.25,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          elevation: 3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.compare_arrows,
                                color: Colors.orange[900],
                              ),
                              Text(
                                'Փոխանցել',
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.25,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          elevation: 3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_upward,
                                color: Colors.orange[900],
                              ),
                              Text(
                                'Ելքագրել',
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.25,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          elevation: 3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_border,
                                color: Colors.orange[900],
                              ),
                              Text(
                                'Ընտրված',
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.25,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          elevation: 3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.attach_money,
                                color: Colors.orange[900],
                              ),
                              Text(
                                'Վճարել',
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 150,
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.25,
                      width: MediaQuery.of(context).size.width * 0.25,
                      child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          elevation: 3,
                          color: Colors.white,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.credit_card,
                                color: Colors.orange[900],
                              ),
                              Text(
                                'Հաշիվներ',
                                style: TextStyle(fontSize: 12),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
