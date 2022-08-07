void main() {
  // to celcuis
  double tempFarenheit = 86;
  //putput 86F = 30C
  // (F- 32) /1.8 = C
  double temCelcuis = (tempFarenheit - 32) / 1.8;
  print(
      '${tempFarenheit.toStringAsFixed(0)}F = ${temCelcuis.toStringAsFixed(0)}C');

  //postfix
  var y = tempFarenheit++;
}
