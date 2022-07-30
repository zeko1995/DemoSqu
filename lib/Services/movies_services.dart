import 'package:http/http.dart' as http;
import 'package:untitled/Model/Movies.dart';


class MoviesServices {

  String token="af730a652dfe499d38d100f08276d4c2";
  String url="https://api.themoviedb.org/3/movie/550?api_key=";
   Future<List<Movies>?> fetchMovies() async {
    var response = await http.get(Uri.parse(url+token));
    if (response.statusCode == 200) {
      var jsonMovies = response.body;
      return MoviesFromJson(jsonMovies);
    } else {
      //show error message
      return null;
    }
  }
}