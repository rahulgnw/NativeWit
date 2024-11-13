import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class OtherMethods extends StatefulWidget {
  const OtherMethods({super.key});
  @override
  State<OtherMethods> createState() => _OtherMethodsState();
}
class Datamodel {}
class _OtherMethodsState extends State<OtherMethods> {
  @override
  Widget build(BuildContext context) {


    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                        onPressed: () {
                          setState(() {
                            postData();
                          });
                        },
                        child: const Text(
                          "POST",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                        onPressed: () {
                          setState(() {
                            deleteData();
                          });
                        },
                        child: const Text(
                          "DELETE",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purpleAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6))),
                        onPressed: () {
                          setState(() {
                            putData();
                          });
                        },
                        child: const Text(
                          "PUT",
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future<void> postData() async {
    var response = await http.post(
        Uri.parse('https://jsonplaceholder.typicode.com/posts'),
        headers: {"content-type": "application/json"},
        body: jsonEncode({
          "userId": '2',
          "title": 'Introduction to API',
          "body": 'This is just a demo of what you can do'
        }));
    if (response.statusCode == 201) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.fromARGB(255, 122, 245, 126),
        duration: Duration(seconds: 7),
        content: Text("Post Created Successfuly"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(36))),
        showCloseIcon: true,
        dismissDirection: DismissDirection.horizontal,
        closeIconColor: Colors.white,
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: [
            Icon(
              Icons.warning_amber,
              color: Colors.yellow,
            ),
            SizedBox(
              width: 18,
            ),
            Text("Something went wrong!")
          ],
        ),
        backgroundColor: Colors.red,
      ));
      throw Exception("Could not Post Data");
    }
  }
  Future<void> deleteData() async {
    var response = await http
        .delete(Uri.parse('https://jsonplaceholder.typicode.com/posts/${3}'));
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.green,
        duration: Duration(seconds: 7),
        content: Text("Post delete Success"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(36))),
        showCloseIcon: true,
        dismissDirection: DismissDirection.horizontal,
        closeIconColor: Colors.white,
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: [
            Icon(
              Icons.warning_amber,
              color: Colors.yellow,
            ),
            SizedBox(
              width: 18,
            ),
            Text("Something went wrong!")
          ],
        ),
        backgroundColor: Colors.red,
      ));
      throw Exception("Could not delete Data");
    }
  }

  Future<void> putData() async {
    var response = await http.put(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/2'),
        headers: {"content-type": "application/json"},
        body: jsonEncode({
          "userId": '2',
          "title": 'Introduction to API',
          "body":
          'You have learnt some of these concepts now is the time to apply them.'
        }));
    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.fromARGB(255, 122, 245, 126),
        duration: Duration(seconds: 7),
        content: Text("Post Updated Successfuly"),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(36))),
        showCloseIcon: true,
        dismissDirection: DismissDirection.horizontal,
        closeIconColor: Colors.white,
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: [
            Icon(
              Icons.warning_amber,
              color: Colors.yellow,
            ),
            SizedBox(
              width: 18,
            ),
            Text("Something went wrong!")
          ],
        ),
        backgroundColor: Colors.red,
      ));
      throw Exception("Could not update Data");
    }
  }
}