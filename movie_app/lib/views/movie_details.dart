import 'package:flutter/material.dart';
void main()
{
  runApp(CastDetailsPage());
}
class CastDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("The Super Mario Bros. Movie"),
        actions: [
          TextButton(
            onPressed: () {
              // Add functionality to book tickets
            },
            child: Text(
              "Book Ticket",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Movie Image and Details
            Stack(
              children: [
                Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZdT5KsZ8bqbiITh4p3VNEsUu3tbqUkrtmO5o3W09tXSVtYak5', // Replace with actual image URL
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 16,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.orange,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text("2023-04-05"),
                      ),
                      SizedBox(height: 4),
                      Container(
                        color: Colors.orange,
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        child: Text("7.5"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Synopsis
            Text(
              "Synopsis",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),

            // Cast
            Text(
              "Cast",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/99/Chris_Pratt_2018.jpg'), // Replace with actual image URL
                    ),
                    SizedBox(height: 4),
                    Text("Chris Pratt"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Anya_Taylor-Joy_at_Cannes_2024_02.jpg/330px-Anya_Taylor-Joy_at_Cannes_2024_02.jpg'), // Replace with actual image URL
                    ),
                    SizedBox(height: 4),
                    Text("Anya Taylor-Joy"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Charlie_Day_by_Gage_Skidmore_2.jpg/330px-Charlie_Day_by_Gage_Skidmore_2.jpg'),
                    ),
                    SizedBox(height: 4),
                    Text("Charlie Day"),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/92/TenaciousDO2160623_%2838_of_62%29_Jack_Black.jpg'),
                    ),
                    SizedBox(height: 4),
                    Text("Jack Black"),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),

            // About
            Text(
              "About",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            buildDetailRow("Original Title:", "The Super Mario Bros. Movie"),
            buildDetailRow("Status:", "Released"),
            buildDetailRow("Runtime:", "92"),
            buildDetailRow("Premiere:", "2023-04-05"),
            buildDetailRow("Budget:", "100000000"),
            buildDetailRow("Revenue:", "377628865"),
            buildDetailRow("IMDb:", "tt6718170"),
            buildDetailRow("Vote Rating:", "7.543"),
          ],
        ),
      ),
    );
  }

  Widget buildDetailRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}