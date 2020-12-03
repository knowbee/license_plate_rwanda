import 'dart:io';
import 'package:license_plate_rwanda/license_plate_rwanda.dart';

void main() {
  // Read a plate number from stdin.
  print('Please enter a plate number:');
  final plateNumber = stdin.readLineSync();

  bool validPlateNumber = isValid(plateNumber);
  // Print a response
  if (validPlateNumber) {
    print('This plate number is valid!');
  } else {
    print('This plate number is not valid!');
  }
}
