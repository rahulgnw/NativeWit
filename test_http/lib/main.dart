import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       appBar: AppBar( title: Text("user and address")

       ),
       body: Center(

    )
    );
  }
}






















/*
* appBar: AppBar(
          title: Text('User and Address App'),
        ),
        body: Center(
          child: FutureBuilder<User>(
            future: Api.getUser(1), // Replace 1 with the desired user ID
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                final user = snapshot.data!;
                return Column(
                  children: [
                    Text('Name: ${user.name}'),
                    Text('Email: ${user.email}'),
                    Text('Address: ${user.address.street}, ${user.address.city}, ${user.address.state}, ${user.address.zipcode}'),
                  ],
                );
              }
            },
          ),
        ),
      ),
    );
  }
}*/





















