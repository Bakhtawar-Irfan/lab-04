import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Scrollable List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ListViewScreen(),
    );
  }
}

class ListViewScreen extends StatelessWidget {
  final List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable List'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.green, // Background color for the scrollable list
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8.0),
              color:
                  index % 2 == 0
                      ? Colors.pink
                      : Colors.blue, // Alternating colors for cards
              child: ListTile(
                leading: Icon(Icons.label, color: Colors.white),
                title: Text(
                  items[index],
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  'Description for ${items[index]}',
                  style: TextStyle(color: Colors.white70),
                ),
                trailing: Icon(Icons.arrow_forward_ios, color: Colors.white),
                onTap: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
