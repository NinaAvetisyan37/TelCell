import 'package:flutter/material.dart';

import 'package:telcell_project/models/card_details.dart';

class CreditCard extends StatefulWidget {
  final CardDetails cardDetails;

  const CreditCard({Key key, this.cardDetails}) : super(key: key);

  @override
  _CreditCardState createState() => _CreditCardState();
}

class _CreditCardState extends State<CreditCard> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.67;
    return Container(
        padding:
            EdgeInsetsDirectional.only(top: 20, start: 15, end: 15, bottom: 15),
        width: width,
        height: width * 0.63,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[300],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              getCardNumber(),
              SizedBox(
                height: 10,
              ),
              getCardImage(),
            ]),
            SizedBox(
              height: 20,
            ),
            getCardNumber(),
          ],
        ));
  }

  Widget getCardNumber() {
    var number = widget.cardDetails.number;

    String numberString = number.toString();

    String cardFormatted = numberString.substring(0, 4) +
        " " +
        numberString.substring(4, 6) +
        '** **** ' +
        numberString.substring(12, 16);

    return Text(
      cardFormatted,
      style: TextStyle(
          color: Colors.black, fontSize: 12, fontWeight: FontWeight.w300),
    );
  }

  Widget getCardImage() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          'https://e7.pngegg.com/pngimages/910/492/png-clipart-mastercard-logo-credit-card-visa-brand-mastercard-text-label-thumbnail.png',
          width: 70,
          height: 50,
        ),
      ],
    );
  }
}
