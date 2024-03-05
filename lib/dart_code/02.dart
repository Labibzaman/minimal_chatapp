import 'dart:io';

void main() {
  String? userString = stdin.readLineSync();

  var a = userString!.split(' ');

  if (userString != null) {
    print('Before swapping: num1 = ${a[0]}, num2 = ${a[1]}');
    print('After swapping: num1 =  ${a[1]}, num2 = ${a[0]}');
  }
}
