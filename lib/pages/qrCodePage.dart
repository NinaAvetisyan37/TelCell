import 'package:flutter/material.dart';

class QrCodePage extends StatefulWidget {
  @override
  _QrCodePageState createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[900],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('QR կոդ',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.w700)),
              Text('ID: 54775104',
                  style: TextStyle(color: Colors.orange[900], fontSize: 14))
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                Text('Ձեր դրամապանակի QR կոդը'),
                Image.network(
                  'https://previews.123rf.com/images/pogorelovaolga/pogorelovaolga1903/pogorelovaolga190300038/118599282-qr-code-icon-on-white-background-qr-code-symbol-sign-vector-illustrationisolated-on-white-background.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.45,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.photo_camera,
                size: 35,
                color: Colors.orange[900],
              ),
              SizedBox(width: 25),
              Icon(Icons.nfc, size: 35, color: Colors.orange[900])
            ],
          )
        ],
      ),
    );
  }
}
