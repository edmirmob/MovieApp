import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

class MovieDetailHeader extends StatelessWidget {
  const MovieDetailHeader({Key key, this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${movie.year} . ${movie.genre.toUpperCase()}',
          style: TextStyle(color: Colors.cyan, fontWeight: FontWeight.w400),
        ),
        Text(
          '${movie.title}',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500),
        ),
        Text.rich(
          TextSpan(
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              children: [
                TextSpan(text: '${movie.plot} '),
                TextSpan(
                  text: 'More...',
                  style: TextStyle(color: Colors.indigoAccent),
                ),
              ]),
        )
      ],
    );
  }
}
