import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Name of movie: $movieName'),
            Text('Name of movie: ${movie.rated}'),
            Text('Name of actors: ${movie.writer}'),
            Container(
                child: ElevatedButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('GO BACK'))),
          ],
        ),
      ),
    );
  }
}
