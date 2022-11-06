import 'package:flutter/material.dart';
import 'package:ui/product/product.dart';
import 'package:ui/tabs/blackjacktab.dart';
import 'package:ui/tabs/leadertab.dart';
import 'package:ui/tabs/scratchtab.dart';
import 'package:ui/tabs/slottab.dart';
import 'package:ui/tabs/wallettab.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> myTabs = const [
      Products(iconPath: 'lib/icons/blackjack.png'),
      Products(iconPath: 'lib/icons/slot.png'),
      Products(iconPath: 'lib/icons/scratch.png'),
      Products(iconPath: 'lib/icons/leader.png'),
      Products(iconPath: 'lib/icons/wallet.png'),
    ];

    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          leading: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32,
            ),
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.person,
                color: Colors.grey,
                size: 32,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 34, vertical: 10),
                child: Row(
                  children: const [
                    Text(
                      'I want to play',
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      ' PLAY',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.pink),
                    )
                  ],
                )),
            const SizedBox(height: 24),
            TabBar(tabs: myTabs),
            Expanded(
                child: TabBarView(
              children: [Blackjack(), Slot(), Scratch(), Leader(), Wallet()],
            ))
          ],
        ),
      ),
    );
  }
}
