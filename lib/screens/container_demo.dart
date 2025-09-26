import 'package:flutter/material.dart';

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Container Demo')),
      body: SingleChildScrollView(
        // Added SingleChildScrollView to prevent overflow
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Container with blackground color
            Container(
              width: 200,
              height: 100,
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Blue Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Container with decoration
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.purple, Colors.blue]),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2, // How much the shadow spreads
                    blurRadius: 5, // How blurry the shadow is
                    offset: Offset(0, 3), // Changes position of shadow
                  )
                ]
              ),
              child: Center(
                child: Text(
                  'Gradient Container',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Container with padding and margin
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.orange,
                border: Border.all(color: Colors.red, width: 2),
              ),
              child: Text('Container with Padding and Margin'),
            ),

            SizedBox(height: 20),

            // Container as card
            Container(
              width: double.infinity, // Full width
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: Offset(0, 2),
                  )
                ]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start
                children: [
                  Text(
                    'Card Title',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 8),

                  Text(
                    'This is a simple card-like container with shadow and rounded corners.',
                    style: TextStyle(color: Colors.grey[700]),
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
