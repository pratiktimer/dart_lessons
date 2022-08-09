enum Medal { gold, silver, bronze, noMedal }

void main() {
  const rank = Medal.gold;
  switch (rank) {
    case Medal.gold:
      print('gold ');
      break;
    case Medal.silver:
      print('silver ');
      break;
    case Medal.bronze:
      print('bronze ');
      break;
    default:
      print('no medal');
      break;
  }
}
