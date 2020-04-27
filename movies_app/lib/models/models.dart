
class Movies {
 final String title;
 final String type;
 final String poster;
 final String year;

 Movies({

 
 this.title,
 this.type,
 this.poster,
 this.year,

});


  factory Movies.fromJson(Map<String, dynamic> json) {
    return Movies(
        title: json['Title'],
        year: json['Year'],
        type: json['Type'],
        poster: json['Poster'],
        );
  }

}