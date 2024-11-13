import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movie_app/firebase_options.dart';
import 'package:movie_app/models/app_state.dart';
import 'package:movie_app/view_model/app_view_model.dart';
import 'package:movie_app/views/home_page.dart';
import 'package:movie_app/views/movie_details.dart';
import 'package:movie_app/views/widgets/login_ui.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    StateNotifierProvider<AppViewModel, AppState>(
      create: (_) => AppViewModel(),
      child: MovieApp(),
    ),
  );
}

class MovieApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie Booking App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MovieHomePage(),
    );
  }
}
//
// class MovieHomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Movies'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => CastDetailsPage()),
//             );
//           },
//           child: Text("View Movie Details"),
//         ),
//       ),
//     );
//   }
// }
