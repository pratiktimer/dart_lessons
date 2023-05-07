class Restaurant {
  final String name;
  final String cuisine;
  final List<double> ratings;

  Restaurant(this.name, this.cuisine, this.ratings);

  int get rating => ratings.length;

  double get averageRating =>
      (ratings.reduce((value, element) => value + element)) / rating;
}
