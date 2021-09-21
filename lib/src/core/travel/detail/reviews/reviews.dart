import 'package:flutter/material.dart';

import '../../../star.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const reviews = 3;
    const photos = 4;
    const formatSubtitle =
        "$reviews review${(reviews > 1 ? "s" : "")} $photos photo${(photos > 1 ? "s" : "")}";
    const comment = "Lorem ipsum dolor sit ammer";

    final reviewTitle = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: const Text(
        'Reviews',
        style: TextStyle(color: Colors.black45),
        textAlign: TextAlign.left,
      ),
    );

    final userName = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: const Text('Juan Pere'),
    );

    final userInfo = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20.0),
          child: const Flexible(
            child: Text(
              formatSubtitle,
              style: TextStyle(color: Colors.black54),
            ),
          ),
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
    );

    final userComment = Container(
      margin: const EdgeInsets.only(left: 20.0),
      child: const Text(
        comment,
        style: TextStyle(color: Colors.black),
      ),
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1631863529579-fdd0cfd7abe7?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80'),
          )),
    );

    final reviewCard = Row(
      children: [
        photo,
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [userName, userInfo, userComment],
        ))
      ],
    );

    final reviewList = Column(
      children: [reviewCard, reviewCard, reviewCard, reviewCard],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [reviewTitle, reviewList],
    );
  }
}
