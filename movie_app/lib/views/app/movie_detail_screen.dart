import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:movie_app/Models/app_state.dart';
import 'package:movie_app/views/review/movie_review_screen.dart';
import 'package:provider/provider.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({super.key});

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 200,
        flexibleSpace: Image.network(movie.posterImage,
        width: 60,),
        title: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if(context.watch<AppState>.currentUser!= null)
                  Align(
                    alignment: Alignment.topRight,
                    child: ElevatedButton(onPressed:(){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (c)=> MovieReviewScreen(movieId: movieId)),
                      )
                    } , child: const Text('Review')),
                  )
              ],
            )
          ],
        ),
      ),
    );
  }
}
