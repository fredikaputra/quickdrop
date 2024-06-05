import 'package:flutter/material.dart';
import 'package:quickdrop/helper.dart';

class Subtitle extends StatelessWidget {
  const Subtitle(
    this.subtitle, {
    super.key,
  });

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        subtitle,
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: lighten(Colors.black, 30)),
      ),
    );
  }
}
