import 'dart:io';
import 'dart:math';

void main() {
  String? userString = stdin.readLineSync();
  double x1=0;
  double x2=0;
  double y2=0;
  double y1=0;

  if(userString!=null) {
    var a = userString.split(' ');


     x1 = double.parse(a[0]);
     y1 = double.parse(a[1]);


    String? SeconduserString = stdin.readLineSync();

    var b = SeconduserString!.split(' ');


     x2 = double.parse(b[0]);
     y2 = double.parse(b[1]);
  }

    double distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
    print('Distance: ${distance.toStringAsPrecision(3)}');

}
