import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> items = [
    'Kolkata',
    'Mumbai',
    'Delhi',
    'Chennai',
    'Bangalore',
    '3 Idiots',
    'Wanted',
    'The Godfather',
    'Pather Panchali',
    'Mahabharat',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter List Navigation'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(item: items[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
