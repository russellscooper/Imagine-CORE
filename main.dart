//Main Interface for machines availible.

import 'Type_AaE.dart';

void main() {
  //load a half spool
  var halfSpool = HalfSpool();

  var angles = halfSpool.load();
  print(angles);

  angles.forEach((e) {
    var reset = Reset(e);
    print(reset);
  });
}
