class Temprature {
  double _celcuis;

  Temprature.celsius(this._celcuis);

  Temprature.farenhiet(double farenhiet) : _celcuis = (farenhiet - 32) / 1.8;

  double get farenhight => _celcuis * 1.8 + 32;
  set farenhight(double farenhight) => _celcuis = (farenhight - 32) / 1.8;
}
