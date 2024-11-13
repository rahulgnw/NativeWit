import 'package:flutter/material.dart';
import 'package:movie_app/views/widgets/grid_widget.dart';
import 'package:movie_app/views/widgets/login_ui.dart';

void main(){
  runApp(MovieHomePage());
}
class MovieHomePage extends StatefulWidget {
  @override
  _MovieHomePageState createState() => _MovieHomePageState();
}

class _MovieHomePageState extends State<MovieHomePage> {
  List<String> imageList = [
    'https://i.pinimg.com/564x/d2/70/89/d270896d9bfbc63513d1090224070e8b.jpg',
    'https://i.pinimg.com/564x/24/05/f5/2405f5d1220d45fef53df0bfe804e104.jpg',
    'https://i.pinimg.com/564x/24/05/f5/2405f5d1220d45fef53df0bfe804e104.jpg',
    'https://i.pinimg.com/564x/24/05/f5/2405f5d1220d45fef53df0bfe804e104.jpg',
    'https://i.pinimg.com/564x/24/05/f5/2405f5d1220d45fef53df0bfe804e104.jpg',
    'https://i.pinimg.com/564x/24/05/f5/2405f5d1220d45fef53df0bfe804e104.jpg',
    'https://i.pinimg.com/564x/24/05/f5/2405f5d1220d45fef53df0bfe804e104.jpg',
    'https://i.pinimg.com/564x/24/05/f5/2405f5d1220d45fef53df0bfe804e104.jpg',
    'https://i.pinimg.com/564x/24/05/f5/2405f5d1220d45fef53df0bfe804e104.jpg',
  ];
  List<String> movieList =[
    'interstellar',
    'Avenger Endgame',
    'Avenger Endgame',
    'Avenger Endgame',
    'Avenger Endgame',
    'Avenger Endgame',
    'Avenger Endgame',
    'Avenger Endgame',
    'Avenger Endgame',
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Book Movie'),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            }, child: Text('Login')),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Popular'),
              Tab(text: 'Top Rated'),
              Tab(text: 'Upcoming'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[ // Pass imageList to GridWidget
            Movietile(imageList: imageList, movieList: movieList,), // Pass imageList to Movietile
            Movietile(imageList: imageList, movieList: movieList,), // Pass imageList to Movietile
            Movietile(imageList: imageList, movieList: movieList,), // Pass imageList to Movietile
          ],
        ),
      ),
    );
  }
}

class Movietile extends StatelessWidget {
  const Movietile({
    super.key,
    required this.imageList, required this.movieList,
  });

  final List<String> imageList;
  final List<String> movieList;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.7,
            crossAxisCount: 3,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 8.0,

          ),
          itemCount: imageList.length,

          itemBuilder: (BuildContext context, index) {
            return Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),

                    image: DecorationImage(

                      image: NetworkImage(imageList[index],),
                      fit: BoxFit.cover,
                    ),
                  ),

                ),
                Text(movieList[index]),
              ],
            );
          },
        ),
      ),
    );
  }
}