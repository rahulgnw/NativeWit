import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/Models/app_state.dart';
import 'package:movie_app/view_model/app_view_model.dart';
import 'package:movie_app/views/widgets/login_ui.dart';
import 'package:provider/provider.dart';

import '../../models/review.dart';
import 'create_or_edit_review.dart';

class MovieReviewScreen extends StatefulWidget {
  const MovieReviewScreen({super.key, required this.movieId});

  final int movieId;

  @override
  State<MovieReviewScreen> createState() => _MovieReviewScreenState();
}

class _MovieReviewScreenState extends State<MovieReviewScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AppViewModel>().listenMovie(movieId: widget.movieId.toString());
  }


  @override
  Widget build(BuildContext context) {
    BuiltList<Review> review =
        context.watch<AppState>().movieReview[widget.movieId] ?? BuiltList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Review Screen'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
            return CreateOrEditReview(movieId: widget.movieId.toString());
          },
          ),
        );
      }, child: const Icon(Icons.add),),


      body: ListView.builder(
          itemCount: review.length,
          itemBuilder: (BuildContext context, int index) {
            var p = review[index];
            return ListTile(
              title: Text(p.comments ?? ''),
              subtitle: Text(p.star.toString()),
            );
          }),
    );
  }
}