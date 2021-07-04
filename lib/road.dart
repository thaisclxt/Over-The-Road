int overTheRoad(int adress_number, int street_length) {
  final index = (adress_number - 1) ~/ 2;
  return (street_length * 2) - (2 * index);
}
