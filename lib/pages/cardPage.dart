import 'package:flutter/material.dart';
import 'package:telcell_project/card.dart';
import 'package:telcell_project/models/card_details.dart';

class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  List<CardDetails> cards = [
    CardDetails(
      1430345698762345,
    ),
    CardDetails(
      1430345698762345,
    ),
  ];
  int selectedCard = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.credit_card),
            SizedBox(
              width: 7,
            ),
            Text("2 048.00")
          ],
        ),
        centerTitle: true,
        actions: [Icon(Icons.add)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Քարտեր',
              style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
          Container(
            height: 160,
            width: MediaQuery.of(context).size.width,
            child: PageView(
              allowImplicitScrolling: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {},
              children: List.generate(cards.length, (index) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(selectedCard == index ? 0 : 20),
                    child: CreditCard(cardDetails: cards[index]),
                  ),
                );
              }),
            ),
          ),
          Text(
            "Վերջին գործարքները",
            style: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.credit_card,
                    size: 65,
                    color: Colors.grey[300],
                  ),
                  Text("Ընտրեք քարտը",
                      style: TextStyle(color: Colors.grey[300]))
                ],
              ),
            ),
          )
        ])),
      ),
    );
  }
}
