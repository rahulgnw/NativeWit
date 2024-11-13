import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ReadData extends StatefulWidget {
  const ReadData({Key? key}) : super(key: key);

  @override
  State<ReadData> createState() => _ReadDataState();
}

class _ReadDataState extends State<ReadData> {
  String stringValue = '';
  int intValue = 0;
  bool boolValue = false;
  double doubleValue = 11.5;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      stringValue = prefs.getString('String Value') ?? '';
      intValue = prefs.getInt('int value') ?? 11;
      boolValue = prefs.getBool('bool ') ?? false;
      doubleValue = prefs.getDouble('double value')?? 11.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Read Data from SharedPreferences'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('String Value: $stringValue'),
            Text('Int Value: $intValue'),
            Text('Bool : $boolValue'),
            Text('double value: $doubleValue' ),
          ],
        ),
      ),
    );
  }
}