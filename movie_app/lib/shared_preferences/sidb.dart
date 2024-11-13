import 'package:shared_preferences/shared_preferences.dart';

addStringToSf()async{
  SharedPreferences prefs= await SharedPreferences.getInstance();
  prefs.setString('String Value',"abc");
}
addIntToSf()async{
  SharedPreferences prefs= await SharedPreferences.getInstance();
  prefs.setInt('int value', 11);
}
addBoolToSf()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("bool", true);
}
addDoubleToSf()async{
  SharedPreferences prefs= await SharedPreferences.getInstance();
  prefs.setDouble("double value", 10.03);
}