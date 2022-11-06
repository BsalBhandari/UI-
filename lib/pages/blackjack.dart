import 'package:flutter/material.dart';

class BlackJackview extends StatelessWidget {
  final String tableNo;
  final String buyIn;
  final Color tableColor;
  final String counryImage;
  final bool favorite;

  const BlackJackview(
      {super.key,
      required this.tableNo,
      required this.buyIn,
      required this.tableColor,
      required this.counryImage,
      required this.favorite});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
              color: tableColor.withOpacity(0.07),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: tableColor.withOpacity(0.2),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(14),
                            topRight: Radius.circular(14))),
                    child: Text(
                      buyIn,
                      style: TextStyle(
                          color: tableColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ),
                ],
              ),
              Container(
                width: 120,
                height: 105,
                child: Image.asset(counryImage),
              ),
              Text(
                tableNo,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.favorite,
                      color: favorite ? Colors.pink : Colors.grey[400],
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.black,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
