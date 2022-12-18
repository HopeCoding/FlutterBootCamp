import 'package:dart_lessons/object_oriented/composition/categories.dart';
import 'package:dart_lessons/object_oriented/composition/directors.dart';

class Films {
  int film_id;
  String film_name;
  int film_year;
  Categories category; //Composition
  Directors director; //Composition

  Films(
      {required this.film_id,
       required this.film_name,
       required this.film_year,
       required this.category,
       required this.director});
  
}
