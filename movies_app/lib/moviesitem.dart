import 'package:flutter/material.dart';
import './models/models.dart' as models;

class MovieItem extends StatelessWidget {
  final models.Movies movie;

  MovieItem({this.movie});
                 
 

  @override
  Widget build(BuildContext context) {
  print(this.movie.poster);
  print(this.movie.title);
    
    return Container(
      
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          Column(children: <Widget>[
            
            this.movie.poster != null ? 
            // Container(child:
             Image.network(movie.poster, height: 150, width: 120)
            // padding:EdgeInsets.symmetric(
              // horizontal:5,
              // vertical:5
            // ),
            // ) :
            // if (this.movie.poster != "N/A")
             :  Text('loading'),
          ]),
         
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  overflow: TextOverflow.ellipsis,
                  
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w900
                  ),
                ),
                 Chip(label: Text(movie.type),
                 backgroundColor: Colors.green,
                 ),
                 Container(child: Text(movie.year),
                 margin: EdgeInsets.only(left:12),
                 ),
                 
              ]),
              
        ],
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(top: 1, left: 10, right: 10),
      decoration:
           BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)),color: Colors.white
           ,
           gradient: LinearGradient(
             begin: Alignment.topCenter,
             end: Alignment.center,
             colors: [Colors.black12, Colors.white70])
           ),
    );
  }
}