import 'package:dart_lessons/section11_classes/restaurant.dart';

void main() {
  final resturant = Restaurant('pratik', 'chinesse', [5, 7, 8, 9, 2, 4, 5]);
  print('the total numbers of ratings ${resturant.rating}');
  print('the average rating is  ${resturant.averageRating}');
}
