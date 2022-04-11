import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NamePlayer extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var dataClash;
  NamePlayer(this.dataClash, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        dataClash.name.toString(),
        style: const TextStyle(
            color: Colors.white, fontFamily: 'clash',
             fontSize: 12),
      ),
    );
  }
}
