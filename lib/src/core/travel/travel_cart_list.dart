import 'package:first_app/src/core/travel/travel_card.dart';
import 'package:flutter/material.dart';

class TravelCardList extends StatelessWidget {
  const TravelCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350.0,
      child: ListView(
        padding: const EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: const [TravelCard(), TravelCard(), TravelCard()],
      ),
    );
  }
}
