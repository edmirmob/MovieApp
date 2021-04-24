import 'package:flutter/material.dart';

class MovieListViewDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Movies'),
      centerTitle: true,
      backgroundColor: Colors.blueGrey.shade900,
    ),
    body: Center(
      child: Container(
        child: ElevatedButton(onPressed: ()=>Navigator.pop(context),
        child: Text('GO BACK'))
      ),
    ),
    );
  }
}