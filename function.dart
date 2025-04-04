import 'dart:io';

Map<String, dynamic> calculateOperations(double num1, double num2) {
  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;
  double? quotient = num2 != 0 ? num1 / num2 : null;
  
  return {
    'sum': sum,
    'difference': difference,
    'product': product,
    'quotient': quotient,
  };
}

void main() {
  stdout.write('Enter first number: ');
  double num1 = double.parse(stdin.readLineSync()!);
  
  stdout.write('Enter second number: ');
  double num2 = double.parse(stdin.readLineSync()!);
  
  Map<String, dynamic> results = calculateOperations(num1, num2);
  
  print('\nResults:');
  print('Sum: ${results['sum']}');
  print('Difference: ${results['difference']}');
  print('Product: ${results['product']}');
  
  if (results['quotient'] != null) {
    print('Quotient: ${results['quotient']}');
  } else {
    print('Quotient: Cannot divide by zero');
  }
}
