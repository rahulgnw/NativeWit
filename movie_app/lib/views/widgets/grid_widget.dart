import 'package:flutter/material.dart';

import '../home_page.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({super.key, required this.imageList});

  final List<String> imageList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemBuilder: (_, index) => Image.network(
          imageList[index],

      ),
      itemCount: 9,
    );
  }
}
