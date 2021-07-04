import 'package:road/road.dart' as road;
import 'dart:io';

void main(List<String> arguments) {
  final adress_number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
  final street_length = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  print(road.overTheRoad(adress_number, street_length));
}
