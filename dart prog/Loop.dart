import 'dart:io';
void main() {
  stdout.write("Enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }

  print("Numbers from 1 to \$number:");
  for (int i = 1; i <= number; i++) {
    print(i);
  }
}
