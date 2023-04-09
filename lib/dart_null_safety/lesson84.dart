void main() {
  var cities = <String?>['panjim', 'madagao', null];
  for (var city in cities) {
    print(city?.toUpperCase());
  }
}
