import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  const TravelCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const image =
        'https://images.unsplash.com/photo-1631863529579-fdd0cfd7abe7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80';
    final card = Container(
      height: 350,
      width: 250,
      margin: const EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: const BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
              color: Colors.black38,
              blurRadius: 15.0,
              offset: Offset(0.0, 0.7)),
        ],
      ),
    );
    return card;
  }
}
