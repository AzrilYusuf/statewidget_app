import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Button Demo')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          // Center the buttons vertically and horizontally
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                print('ElevatedButton pressed');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Elevated Button pressed!')),
                );
              },
              child: Text('Elevated Button'),
            ),

            TextButton(
              onPressed: () {
                print('Text button pressed');
              },
              child: Text('Text Button'),
            ),

            OutlinedButton(
              onPressed: () {
                print('Outlined button pressed');
              },
              child: Text('Outlined Button'),
            ),

            IconButton(
              onPressed: () {
                print('Icon button pressed');
              },
              icon: Icon(Icons.thumb_up),
              iconSize: 40.0,
            ),

            FloatingActionButton(
              onPressed: () {
                print('Floating action button pressed');
              },
              child: Icon(Icons.add),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.purple,
                padding: EdgeInsets.symmetric(vertical: 15.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                textStyle: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                print('Custom button pressed');
              },
              child: Text('Custom Styled Button'),
            ),
          ],
        ),
      ),
    );
  }
}
