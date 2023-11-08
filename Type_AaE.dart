/*Name: Type Angles as Everything
Purpose: Create machine that can read/write angles as data. 
*/

//The machine will accept two types of input, radians and degrees.
//First, the machine validates that the input is a double
bool validator(dynamic value) {
  return value is double;
}

//These functions attempt to tame errors caused by floating point numbers

//This function avoids direct comparison due to precision errors.
bool safeComparison(double a, double b, double epsilon) {
  return (a - b).abs() < epsilon;
}

//This function automatically formats double values to a specified precision
String precisionFix(double value, int precision) {
  //precision is the number of decimal points.
  return value.toStringAsFixed(precision);
}

//This function assists with dividing doubles that are very close to zero can cause precision problems or create a very large result
double mindfulDivision(double numerator, double denominator, double epsilon) {
  if (denominator.abs() < epsilon) {
    return double.infinity;
  } else {
    return numerator / denominator;
  }
}

//Control 1 - RESET - Convert all incoming angles to 0.0
double Reset(double value) {
  return 0.0;
}

//Control 2 - Half Right Add - Adds 45 Degrees to each input
double HRA(double value) {
  return value + 45.0;
}

//Control 3 - Half Right Sub - Subtracts 45 Degrees from each input
double HRS(double value) {
  return value - 45.0;
}
