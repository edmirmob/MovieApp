import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/movie_details_thumbnail.dart';

class MovieListViewDetails extends StatelessWidget {
  const MovieListViewDetails({Key key, this.movieName, this.movie})
      : super(key: key);

  final String movieName;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movies'),
          centerTitle: true,
          backgroundColor: Colors.blueGrey.shade900,
        ),
        body: ListView(
          children: [
            MovieDetailsThumbnail(
              thumbnail: movie.images[0],
            )
          ],
        ));
  }
}
