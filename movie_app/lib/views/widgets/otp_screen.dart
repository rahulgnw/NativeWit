import 'package:flutter/material.dart';
import 'package:movie_app/view_model/app_view_model.dart';
import 'package:provider/provider.dart';

import '../home_page.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key, required this.vid});

  final String vid;

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Otp"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              controller: otpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  hintText: 'Enter Otp',
                  suffixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24))),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
              onPressed: () async {
               await context.read<AppViewModel>().verifyOtp(smsCode: otpController.text, vid: widget.vid);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MovieHomePage()),
                );
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
