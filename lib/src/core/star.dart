import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Star extends StatelessWidget {
  final bool hasStar;
  const Star(this.hasStar, Key? key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      hasStar ? Icons.star : Icons.star_border,
      color: const Color(0XFFf2C611),
    );
  }
}
