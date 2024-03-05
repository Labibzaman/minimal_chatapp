import 'dart:io';

void main() {
  String? userString = stdin.readLineSync();
  int userNumber = int.parse(userString!);

  if (userNumber > 0) {
    print('$userNumber is a positive number.');
  } else if (userNumber==0) {
    print('The number is zero.');
  } else {
    print('$userNumber is a negative number.');
  }
}