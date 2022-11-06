import 'package:flutter/material.dart';

class Slot extends StatelessWidget {
  const Slot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.green,
        child: Center(child: Text('Everyone loves slot')),
      ),
    );
    // return Container(
    //   child: Center(child: Text('Everyone loves slot')),
    // );
  }
}
