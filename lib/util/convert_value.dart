convertPersentoInt(String value) {
  if (value == "100 %") {
    return 100;
  } else {
    int temp = int.parse("${value[0]}${value[1]}");
    return temp;
  }
}
