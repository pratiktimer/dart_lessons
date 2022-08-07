void main() {
  //14
  String title = 'Dart cousre';
  print(title.toUpperCase());
  print(title.toLowerCase());

  //16 Exrcise
  print(title);
  print(title.toUpperCase());
  print(title.toLowerCase());

  //17 replace
  String lovePizza = 'i love pizza';
  print(lovePizza.contains('pizza'));
  print(lovePizza.replaceAll('pizza', 'pasta'));

  //18 conversion
  int age = 28;
  String ageString = age.toString();

  double height = 1.86;
  String heightString = height.toStringAsFixed(2);
  String ratingString = '4.5';
  double rating = double.parse(ratingString);
}
