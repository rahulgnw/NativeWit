import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: ActorProfilePage(),
  ));
}

class ActorProfilePage extends StatelessWidget {
  const ActorProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chris Pratt'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://upload.wikimedia.org/wikipedia/commons/9/99/Chris_Pratt_2018.jpg',
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Birthday: 1979-06-21', style: TextStyle(fontSize: 16)),
                      Text('Deathday: -', style: TextStyle(fontSize: 16)),
                      Text('Gender: Male', style: TextStyle(fontSize: 16)),
                      Text('IMDB Id: nm0695435', style: TextStyle(fontSize: 16)),
                      Text('Place of Birth: Virginia, Minnesota, USA', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Movies', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('TV', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.7,
                ),
                itemCount: movieList.length,
                itemBuilder: (context, index) {
                  final movie = movieList[index];
                  return Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(movie['imageUrl']!), // Corrected key here
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        movie['title']!, // Corrected key here
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final List<Map<String, String>> movieList = [
{
'title': 'Deep in the Valley',
'imageUrl': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS5QA-P1_LxzGfwgQK4oV0o0lxuqW0m3Kdy3WWZwT4Xu556ljTCrkUNZ2CuqpuqBlA22Yfo',
},
{
'title': 'Jurassic World',
'imageUrl': 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRxJvyc-Eu5MOkSYsMbmRybS4DbiBa7cpoGuufWPw44K4mgeIjKNL2iJ7PFIoI_muWmiXvV',
},
{
'title': 'The Lego Movie',
'imageUrl': 'https://upload.wikimedia.org/wikipedia/en/1/10/The_Lego_Movie_poster.jpg'
},
  {
    'title': 'Deep in the Valley',
    'imageUrl': 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcS5QA-P1_LxzGfwgQK4oV0o0lxuqW0m3Kdy3WWZwT4Xu556ljTCrkUNZ2CuqpuqBlA22Yfo',
  },
  {
    'title': 'Jurassic World',
    'imageUrl': 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRxJvyc-Eu5MOkSYsMbmRybS4DbiBa7cpoGuufWPw44K4mgeIjKNL2iJ7PFIoI_muWmiXvV',
  },
  {
    'title': 'The Lego Movie',
    'imageUrl': 'https://upload.wikimedia.org/wikipedia/en/1/10/The_Lego_Movie_poster.jpg'
  },
];