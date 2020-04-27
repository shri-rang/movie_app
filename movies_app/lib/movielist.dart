import 'package:flutter/material.dart';
import './moviesitem.dart';
import './models/models.dart';

class MovieList extends StatelessWidget {
  final List<Movies> movies;
  

  MovieList({this.movies});

  @override
  Widget build(context) {
    return new Container(
        decoration: BoxDecoration(color: Colors.grey),
        child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: movies.length,
            itemBuilder: (BuildContext context, int index) {
              return  GestureDetector(
                  child: MovieItem(movie: movies[index]),
              );
            }));
  }
}