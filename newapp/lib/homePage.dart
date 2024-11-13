import 'package:flutter/material.dart';
import 'package:newapp/chatPage.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: chatPage(

      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueGrey,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "chats",

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
          label:"Channels"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: "Profile"
          ),
        ],
      ),
    );

  }
}
