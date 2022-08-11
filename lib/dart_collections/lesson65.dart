void main() {
  const pizzaPrices = {
    'margherita': 5.5,
    'paereconi': 7.5,
    'vegetarian': 6.5,
  };
  const orders = ['margherita', 'paereconi'];
  var total = 0.0;
  for (var order in orders) {
    final price = pizzaPrices[order];
    if (price != null) {
      total += price;
    } else {
      print('$order pizza is not on the menu');
    }
  }
  print('Total : \$$total');
}
