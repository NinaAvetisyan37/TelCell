import 'package:flutter/material.dart';
import 'package:telcell_project/pages/bonusPage.dart';
import 'package:telcell_project/pages/cardPage.dart';
import 'package:telcell_project/pages/pinPage.dart';
import 'package:telcell_project/pages/qrCodePage.dart';
import 'package:telcell_project/pages/walletPage.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 5, vsync: this, initialIndex: 2);

    tabController.addListener(() {
      FocusScope.of(context).unfocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: body(),
    );
  }

  Widget body() {
    return Column(
      verticalDirection: VerticalDirection.up,
      children: [
        Card(
          margin: EdgeInsets.zero,
          elevation: 5,
          child: TabBar(
            indicatorPadding: EdgeInsets.zero,
            labelPadding: EdgeInsets.zero,
            unselectedLabelStyle: TextStyle(
              color: Colors.grey[400],
              fontSize: 10,
            ),
            labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 10,
            ),
            labelColor: Colors.orange[900],
            indicator: BoxDecoration(
                border: Border.all(
              width: 0,
              color: Colors.transparent,
            )),
            unselectedLabelColor: Theme.of(context).disabledColor,
            controller: tabController,
            tabs: [
              Tab(
                text: 'Tellcell Wallet',
                icon: Icon(Icons.account_balance_wallet),
              ),
              Tab(
                text: 'Քարտեր',
                icon: Icon(Icons.credit_card),
              ),
              Tab(
                text: 'BON',
                icon: Icon(Icons.attach_money),
              ),
              Tab(
                text: 'QR կոդ',
                icon: Icon(Icons.view_module),
              ),
              Tab(
                text: 'Այլ',
                icon: Icon(Icons.more_horiz),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(controller: tabController, children: [
            WalletPage(),
            CardPage(),
            BonusPage(),
            QrCodePage(),
            PinPage(),
          ]),
        )
      ],
    );
  }
}
