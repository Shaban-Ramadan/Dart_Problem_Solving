class Movie {
  String _title, _studio, _rating;

  Movie(this._title, this._studio, [this._rating ='PG']);

  @override
  String toString() {
    return 'title :$_title, studio:$_studio, rating:$_rating ';
  }

  String get title => _title;
  String get studio => _studio;
  String get rating => _rating;

  static List<Movie> getPG(List<Movie> movieArr) {
    List<Movie> pgMovies = [];
    for (int i = 0; i < movieArr.length; i++) {
      if (movieArr[i].rating.contains('PG')) {
        pgMovies.add(movieArr[i]);
      }
    }
    return pgMovies;
  }
}

void main() {
  Movie casinoRoyaleMovie = Movie('Casino Royale', "Eon Productions", "PG13");
  Movie theNotebookMovie = Movie('The notebook', "Amrican Production", "PG15");
  Movie theRockMovie = Movie('The Rock', "Italian Production", "P5");
  List<Movie> movies = [casinoRoyaleMovie, theNotebookMovie, theRockMovie];
  print("the gp rating movies :${Movie.getPG(movies).toString()}");
  print("the movies title :${theNotebookMovie.title}");
}
//========== testing example ================
//the gp rating movies :[title :Casino Royale, studio:Eon Productions, rating:PG13 , title :The notebook, studio:Amrican Production, rating:PG15 ]
// the movies title :The notebook
