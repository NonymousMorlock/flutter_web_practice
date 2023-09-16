import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText(this.data, {super.key, this.size, this.colour, this.weight});

  final String data;
  final double? size;
  final Color? colour;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: size ?? 16,
        color: colour ?? Colors.black,
        fontWeight: weight ?? FontWeight.normal,
      ),
    );
  }
}
