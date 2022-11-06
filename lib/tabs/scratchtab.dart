import 'package:flutter/material.dart';

class Scratch extends StatelessWidget {
  const Scratch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.blueGrey,
        child: Center(child: Text('Play 8 ball scratch')),
      ),
    );
    // return Container(
    //   child: Center(child: Text('Play 8 ball scratch')),
    // );
  }
}
