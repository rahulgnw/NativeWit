

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(removeData());
}

class removeData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SharedPreferences Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: removeDataPage(),
    );
  }
}

class removeDataPage extends StatefulWidget {
  @override
  _RemoveDataPageState createState() => _RemoveDataPageState();
}

class _RemoveDataPageState extends State<removeDataPage> {
  String stringValue = '';
  bool boolValue = false;
  int intValue = 0;
  double doubleValue = 0.0;

  @override
  void initState() {
    super.initState();
    _loadValues();
  }

  _loadValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      stringValue = prefs.getString('stringValue') ?? '';
      boolValue = prefs.getBool('boolValue') ?? false;
      intValue = prefs.getInt('intValue') ?? 0;
      doubleValue = prefs.getDouble('doubleValue') ?? 0.0;
    });
  }

  removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("stringValue");
    await prefs.remove("boolValue");
    await prefs.remove("intValue");
    await prefs.remove("doubleValue");
   await _loadValues();
  }

  saveValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('stringValue', 'Hello, World!');
    await prefs.setBool('boolValue', true);
    await prefs.setInt('intValue', 42);
    await prefs.setDouble('doubleValue', 3.14);
    _loadValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SharedPreferences '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('String Value: $stringValue'),
            Text('Bool Value: $boolValue'),
            Text('Int Value: $intValue'),
            Text('Double Value: $doubleValue'),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: saveValues,
              child: Text('save Values'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: removeValues,
              child: Text('Remove Values'),
            ),


          ],
        ),
      ),
    );
  }
}
