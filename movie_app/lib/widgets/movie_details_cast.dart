import 'package:flutter/material.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/widgets/movie_field.dart';

class MovieDetailsCast extends StatelessWidget {
  
  const MovieDetailsCast({Key key, this.movie}) : super(key: key);
  
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
         MovieField(field: 'Cast',value: movie.actors,),
         MovieField(field: 'Directors',value: movie.director,),
         MovieField(field: 'Awards',value: movie.awards,),
         MovieField(field: 'Language',value: movie.language,),
         MovieField(field: 'Country',value: movie.country,),
         MovieField(field: 'IMDB vote',value: movie.imdbVotes,)
        ],
      ),
    );
  }
}