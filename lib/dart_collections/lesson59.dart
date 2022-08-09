void main() {
  var euCountries = {'Italy', 'UK', 'Russia'};
  euCountries.elementAt(0);
  euCountries.add('Italy');
  print(euCountries);
  var asianContries = {'India', 'China', 'Russia'};
  print(euCountries.union(asianContries));
  print(euCountries.intersection(asianContries));
  print(euCountries.difference(asianContries));
}
