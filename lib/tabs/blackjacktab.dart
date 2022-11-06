import 'package:flutter/material.dart';
import 'package:ui/pages/blackjack.dart';

class Blackjack extends StatelessWidget {
  final List tables = [
    ["Rome", "\$10-\$100", Colors.black, 'lib/images/rome.jpg', true],
    ["USA", "\$101-\$1000", Colors.deepOrange, 'lib/images/usao.jpg', true],
    ["India", "\$1001-\$10000", Colors.purple, 'lib/images/indiao.jpg', false],
    ["Nepal", "\$10001-\$100000", Colors.blue, 'lib/images/nepalo.jpg', true],
  ];
  Blackjack({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: tables.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 1 / 1.14),
        itemBuilder: (BuildContext context, index) {
          return BlackJackview(
            tableNo: tables[index][0],
            buyIn: tables[index][1],
            tableColor: tables[index][2],
            counryImage: tables[index][3],
            favorite: tables[index][4],
          );
        });
  }
}
