import './movielist.dart';
import 'package:flutter/material.dart';
import './moviesservices/moviesservices.dart';



class MoviesHomePage extends StatefulWidget {
  @override
  _MoviesHomePageState createState() => _MoviesHomePageState();
}

class _MoviesHomePageState extends State<MoviesHomePage> {
    final searchController = TextEditingController();
    String searchText="";
  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home',
        style: TextStyle(
          color: Theme.of(context).accentColor,
          fontWeight: FontWeight.bold,
          fontFamily: 'arvo',
          fontSize: 30
          
        ),
        
        ),
      ),
 body:
   Container(
     child:
             Column(
                children:<Widget>[
                  Container(
                    
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            child: TextField(
                            decoration:InputDecoration(
                              // labelText:'Search for Movies',
                            hintText: 'Search for Movies',
                            fillColor: Colors.black26,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black26)


                            ),
                             focusedBorder:OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.black26, width: 2.0),
                            // borderRadius: BorderRadius.circular(25.0),

                              ),
                            
                            suffixIcon: IconButton(
                             icon: Icon(Icons.search, 
                             color: Theme.of(context).accentColor,
                             ),
                             
                              onPressed: (){
                                 setState(() {
                         searchText= searchController.text;
                       
                            });

                              },
                            ),
                            
                            ),
                            controller: searchController,
                            
                          
                          ),
                        ),  
          
                      ],
                      ),
                       padding: EdgeInsets.all(10),
                 ),     
                 searchText.isEmpty ?
                 Text('Search For Movie'):
                  FutureBuilder(
                   future: fetchData(searchText),
                   builder: (context, snapshot){
                    //  print(snapshot.data);
                     if (snapshot.hasData) {
                      return Expanded(
                          child: MovieList(
                              movies: snapshot.data,
                              ));
                    } else if (snapshot.hasError) {
                      return Text("${snapshot.error}");
                    }
                    return CircularProgressIndicator();
                         
                         
                      

                  
                     
                   }
                 )
                   
     


                ],
            ),
            


            
      ),              
    );
  }
}