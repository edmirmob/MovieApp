import 'package:flutter/material.dart';

class MovieDetailsThumbnail extends StatelessWidget {
  const MovieDetailsThumbnail({Key key, this.thumbnail}) : super(key: key);

  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 190,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(thumbnail), fit: BoxFit.cover)),
            ),
            Icon(
              Icons.play_circle_outline,
              color: Colors.white,
              size: 100,
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0x00f5f5f5f), Color(0xfff5f5f5f)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
          ),
          height: 80,
        )
      ],
    );
  }
}
