import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Card Demo')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Basic Card
          Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('This is a basic card.'),
            ),
          ),

          SizedBox(height: 16),

          // Card with elevation
          Card(
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Card with high elevation.'),
            ),
          ),

          SizedBox(height: 16),

          // Complex Card
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Icon(Icons.image, size: 60, color: Colors.white),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Card Title',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 8),

                      Text(
                        'This is a description of the card content. It can contain multiple lines of text.',
                        style: TextStyle(color: Colors.grey[600]),
                      ),

                      SizedBox(height: 16),

                      Row(
                        // mainAxisAlignment is used to align the children within the row
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: () {}, child: Text('Action 1')),
                          TextButton(onPressed: () {}, child: Text('Action 2')),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 16),

          // Card with ListTile
          Card(
            child: ListTile(
              leading: CircleAvatar(child: Icon(Icons.person)),
              title: Text('John Doe'),
              subtitle: Text('Flutter Developer'),
              trailing: Icon(Icons.more_vert),
              onTap: () {
                print('Card tapped.');
              },
            ),
          ),
        ],
      ),
    );
  }
}
