import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/movie_list_view_details.dart';

class MovieListView extends StatelessWidget {
  final List<Movie> listMovie = Movie.getMovies();

  final List<String> movies = [
    'Titanic',
    'Blade Runner',
    'Rambo',
    'The Avengers',
    'Avatar',
    'I\'m Legend',
    '300',
    'The Wolf of Wall Street',
    'Interstellar',
    'Game of Thrones',
    'Vikings'
  ];
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(movie.title),
                    Text('Rating: ${movie.imdbRating} /10')
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Released: ${movie.relased}'),
                    Text(movie.runtime),
                    Text(movie.rated)
                  ],
                )
              ],
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
      backgroundColor: Colors.blueGrey.shade400,
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

            // Card(
            //   elevation: 4.5,
            //   color: Colors.white,
            //   child: ListTile(
            //     leading: CircleAvatar(
            //       backgroundColor: Colors.blueAccent,
            //       child: Container(
            //         height: 200,
            //         width: 200,
            //         decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(14),
            //             image: DecorationImage(
            //                 image: NetworkImage(
            //                   listMovie[index].images[0],
            //                 ),
            //                 fit: BoxFit.cover)),
            //         child: Text('H'),
            //       ),
            //     ),
            //     title: Text(listMovie[index].title),
            //     subtitle: Text(listMovie[index].writer),
            //     trailing: Text('...'),
            //     onTap: () => Navigator.push(context,
            //         MaterialPageRoute(builder: (context) {
            //       return MovieListViewDetails(
            //         movieName: listMovie[index].title,
            //         movie: listMovie[index],
            //       );
            //     })),
            //   ),
            // );
          }),
    );
  }
}
