/******************************************************************************

 Dart Program for cerner_2^5_2020

 *******************************************************************************/
class Leap {
  bool leapYear(num year) {
    return (year % 400 == 0) || (( year % 100 != 0) && (year % 4 == 0));
 
  bool isLeapYear(int year) =>
    (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));
  }
}