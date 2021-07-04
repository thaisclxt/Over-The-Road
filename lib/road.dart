int overTheRoad(int adress_number, int street_length) {
  var right_house = <int>[];
  var left_house = <int>[];

  for (var house_number = 1;
      house_number < street_length * 2;
      house_number += 2) {
    right_house.add(house_number);
  }

  for (var house_number = street_length * 2;
      house_number >= 2;
      house_number -= 2) {
    left_house.add(house_number);
  }

  if (left_house.contains(adress_number)) {
    return right_house[left_house.indexOf(adress_number)];
  } else {
    return left_house[right_house.indexOf(adress_number)];
  }
}
