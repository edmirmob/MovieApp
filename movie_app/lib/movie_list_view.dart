import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
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
            return Card(
              elevation: 4.5,
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      image: DecorationImage(
                        image: NetworkImage(listMovie[index].images[0],),fit: BoxFit.cover
                      )
                    ),
                    child: Text('H'),
                  ),
                ),
                title: Text(listMovie[index].title),
                subtitle: Text(listMovie[index].writer),
                trailing: Text('...'),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                  return MovieListViewDetails(
                    movieName: listMovie[index].title,
                    movie: listMovie[index],
                  );
                })),
              ),
            );
          }),
    );
  }
}
