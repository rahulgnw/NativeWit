import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_protocal/other_methods.dart';
void main() {
  runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: MyApp()));
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class Dogmodel {
  final List message;
  var dogRange = List;
  Dogmodel({required this.message});
  factory Dogmodel.fromJson(dynamic json) {
    return Dogmodel(message: json['message'] as List);
  }
}
class _MyAppState extends State<MyApp> {
  Future<Dogmodel> getDog() async {
    final response =
    await http.get(Uri.parse('https://dog.ceo/api/breed/beagle/images'));
    if (response.statusCode == 200) {
      return Dogmodel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("could not fetch data");
    }
  }
  late Future<Dogmodel> get;
  @override
  void initState() {
    super.initState();
    get = getDog();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> const OtherMethods()));
                  }, child: const Text("Other Methods",style: TextStyle(color: Colors.white),)),
            )
          ],),
        body: Center(
          child: FutureBuilder<Dogmodel>(
              future: get,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasData) {

                  List dogRange = snapshot.data!.message.sublist(0, 10);
                  int dogRangelen = dogRange.length;

                  return ListView.builder(
                      itemCount: dogRangelen,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Card(
                              margin: const EdgeInsets.all(8.0),
                              elevation: 4,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Image.network(
                                        snapshot.data!.message[index]),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        );
                      });
                } else {
                  print("Error: ${snapshot.error}");
                  throw Exception("Could not fetch data");
                }
              }),
        ),
      ),
    );
  }
}