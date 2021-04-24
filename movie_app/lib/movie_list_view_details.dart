import 'package:flutter/material.dart';

class MovieListViewDetails extends StatelessWidget {
  
  const MovieListViewDetails({Key key, this.movieName}) : super(key: key);

  final String movieName;

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
          Container(
            child: ElevatedButton(onPressed: ()=>Navigator.pop(context),
            child: Text('GO BACK'))
          ),
        ],
      ),
    ),
    );
  }
}