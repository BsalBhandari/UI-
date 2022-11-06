import 'package:flutter/material.dart';

class Leader extends StatelessWidget {
  const Leader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.pink,
        child: Center(child: Text('Who is leading')),
      ),
    );
  }
}
