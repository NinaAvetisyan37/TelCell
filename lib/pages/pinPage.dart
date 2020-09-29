import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  @override
  _PinPageState createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return Padding(
      padding: EdgeInsets.only(top: 30, bottom: 10, left: 40, right: 40),
      child: Column(
        children: [
          Image.network(
            'https://lh3.googleusercontent.com/VUBg3Og0wQegNYNdE_APekG5Hp-9clbHMjlwpmsARKM2WiBHgbOaFCWMFaS6G_4jQAG47LzXCtHVB48nvk_Ij-8=h200',
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.height * 0.08,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Մուտքագրեք PIN-ը կամ սկանավորեք մատնահետքը',
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.fiber_manual_record,
                size: 20,
                color: Colors.grey,
              ),
              Icon(
                Icons.fiber_manual_record,
                size: 20,
                color: Colors.grey,
              ),
              Icon(
                Icons.fiber_manual_record,
                size: 20,
                color: Colors.grey,
              ),
              Icon(
                Icons.fiber_manual_record,
                size: 20,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text('1',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Text('2',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Text('3',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ]),
              SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text('4',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Text('5',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Text('6',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ]),
              SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text('7',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Text('8',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Text('9',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
              ]),
              SizedBox(
                height: 25,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                IconButton(
                    icon: Icon(
                      Icons.fingerprint,
                      color: Colors.orange[900],
                    ),
                    onPressed: () {}),

                Text('0',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                IconButton(icon: Icon(Icons.backspace), onPressed: null)

                //IconButton(icon:Text(1), onPressed: null)
              ]),
            ],
          ),
          Text(
            'Մոռացե՞լ եք PIN կոդը',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.orange[900], fontSize: 12),
          ),
        ],
      ),
    );
  }
}
