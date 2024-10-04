import 'dart:io';
void main() {
  int? noOfMonth = int.parse(stdin.readLineSync()!);
  switch (noOfMonth) {
    case 1:
      if(noOfMonth==1) {
        print("Selected month is January.");
      }break;
    case 2:
      if(noOfMonth==2){
        print("Selected month is February.");
      }
      break;
    case 3:
      if(noOfMonth==2) {
        print("Selected month is march.");
      }
      break;
    case 4:
      if(noOfMonth==2) {
        print("Selected month is April.");
      }break;
    case 5:
      if(noOfMonth==2) {
        print("Selected month is May.");
      }
      break;
    case 6:
      if(noOfMonth==2) {
        print("Selected month is June.");
      }
      break;
    case 7:
      if(noOfMonth==2) {
        print("Selected month is July.");
      }
      break;
    case 8:
      if(noOfMonth==2) {
        print("Selected month is August.");
      }
      break;
    case 9:
      if(noOfMonth==2) {
        print("Selected month is September.");
      }break;
    case 10:
      if(noOfMonth==2) {
        print("Selected month is October.");
      }break;
    case 11:
      if(noOfMonth==2) {
        print("Selected month is November.");
      }break;
    case 12:
      if(noOfMonth==2) {
        print("Selected month is December.");
      }break;
    default:
      print("Invalid month.");
      break;
  }
}