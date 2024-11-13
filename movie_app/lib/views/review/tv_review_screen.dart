import 'package:built_collection/built_collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/models/app_state.dart';
import 'package:movie_app/view_model/app_view_model.dart';
import 'package:provider/provider.dart';


import '../../models/review.dart';
import 'create_or_edit_tv_review.dart';

class TvReviewScreen extends StatefulWidget {
  const TvReviewScreen({super.key, required this.tvId});

  final int tvId;

  @override
  State<TvReviewScreen> createState() => _TvReviewScreenState();
}

class _TvReviewScreenState extends State<TvReviewScreen> {
  @override
  void initState() {
    super.initState();
    context.read<AppViewModel>().listenTv(tvId: widget.tvId.toString());
  }

  @override
  Widget build(BuildContext context) {
    BuiltList<Review> review =
        context.watch<AppState>().tvReview[widget.tvId] ?? BuiltList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tv Review Screen'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
            return CreateOrEditTvReview(tvId: widget.tvId.toString());
          }));
        },
        child: const Icon(Icons.add),
      ),
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
