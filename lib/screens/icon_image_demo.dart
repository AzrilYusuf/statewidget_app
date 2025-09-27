import 'package:flutter/material.dart';

class IconImageDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Icon Image Demo')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icon from material design
          Icon(Icons.favorite, size: 50, color: Colors.red),

          SizedBox(height: 20),

          // Multiple icons in a row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home, size: 40, color: Colors.blue),
              Icon(Icons.star, size: 40, color: Colors.orange),
              Icon(Icons.person, size: 40, color: Colors.green),
              Icon(Icons.settings, size: 40, color: Colors.grey[600]),
            ],
          ),

          SizedBox(height: 30),

          // Image from network
          Container(
            width: 200,
            height: 200,
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(height: 20),

          // Placeholder untuk image lokal
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child:
               Image.asset(
                'assets/images/ishowjava.jpg',
                errorBuilder: (context, error, stackTrace) {
                  return Text( // Text to display when the image fails to load
                    'Local Image\nPlaceholder',
                    textAlign: TextAlign.center, // Center the text horizontally
                    style: TextStyle(color: Colors.grey[600]),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
