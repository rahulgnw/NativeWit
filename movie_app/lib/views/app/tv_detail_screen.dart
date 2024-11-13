import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/views/review/tv_review_screen.dart';

class TvDetailScreen extends StatefulWidget {
  final int tvId;

  const TvDetailScreen({super.key, required this.tvId});

  @override
  State<TvDetailScreen> createState() => _TvDetailScreenState();
}

class _TvDetailScreenState extends State<TvDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Tv show details....."),
          ElevatedButton(
            onPressed: () {

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (c) => TvReviewScreen(tvId: widget.tvId),
                ),
              );
            },
            child: const Text("Review"),
          ),
        ],
      ),
    );
  }
}