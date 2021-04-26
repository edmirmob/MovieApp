import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/movie_list_view_details.dart';

class MovieListView extends StatelessWidget {
  final List<Movie> listMovie = Movie.getMovies();

  Widget _movieCard(BuildContext context, Movie movie) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.only(left: 60),
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 54.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          movie.title,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                      Text(
                        'Rating: ${movie.imdbRating} /10',
                        style: mainTextStyle(),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Released: ${movie.relased}',
                        style: mainTextStyle(),
                      ),
                      Text(movie.runtime, style: mainTextStyle()),
                      Text(movie.rated, style: mainTextStyle())
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return MovieListViewDetails(
              movieName: movie.title,
              movie: movie,
            );
          }),
        );
      },
    );
  }

  TextStyle mainTextStyle() {
    return TextStyle(fontSize: 15, color: Colors.grey);
  }

  Widget _movieImage(String imageUrl) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(imageUrl ?? Icon(Icons.no_photography)),
              fit: BoxFit.cover)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
          itemCount: listMovie.length,
          itemBuilder: (context, index) {
            return Stack(
              children: [
                _movieCard(context, listMovie[index]),
                Positioned(
                    top: 10, child: _movieImage(listMovie[index].images[0]))
              ],
            );
          }),
    );
  }
}
