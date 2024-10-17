import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _RegisterPageState();
  }
}
class _RegisterPageState extends State<RegisterPage>{
  double? _deviceHeight, _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
   return Scaffold(

     body: SafeArea(child: Container(
       padding:EdgeInsets.symmetric(
         horizontal: _deviceWidth!*0.05,
       ),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           mainAxisSize: MainAxisSize.max,
           crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             _titleWidget()
           ],
         ),
       ),
     ),
     )
   );
  }
  Widget _titleWidget(){
    return const Text(
      "Chatify",
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600),
    );
  }
  widget _registerbutton(){
    return MaterialButton(
        onPressed:(){},
    minWidth: _deviceWidth!*0.50,
      height: _deviceHeight!*0.05,
      color: Colors.white,
      child: const Text(
        c
      ),
    );
  }
}