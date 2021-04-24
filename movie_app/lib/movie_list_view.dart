import 'package:flutter/material.dart';

class MovieListView extends StatelessWidget {
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
          itemCount: movies.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: ListTile(
                title: Text(movies[index]),
              ),
            );
          }),
    );
  }
}
