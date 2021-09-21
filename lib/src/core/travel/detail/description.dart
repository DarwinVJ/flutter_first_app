import 'package:first_app/src/core/star.dart';
import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String namePlace;
  final int stars;
  final String descriptionPlace;

  const Description(this.namePlace, this.stars, this.descriptionPlace, Key? key)
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final titleStars = Container(
        margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
        child: Row(
          children: <Widget>[
            Text(
              namePlace,
              style:
                  const TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
              textAlign: TextAlign.left,
            ),
            Row(
              children: const [
                Star(true, null),
                Star(true, null),
                Star(true, null),
                Star(false, null)
              ],
            ),
          ],
        ));

    final descriptionContainer = Container(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        margin: const EdgeInsets.only(top: 20.0),
        child: Text(
          descriptionPlace,
          textAlign: TextAlign.left,
        ));

    return Column(
      children: [titleStars, descriptionContainer],
    );
  }
}
