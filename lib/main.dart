import 'package:flutter/material.dart';
import 'package:statewidget_app/screens/button_demo.dart';
import 'package:statewidget_app/screens/card_demo.dart';
import 'package:statewidget_app/screens/container_demo.dart';
import 'package:statewidget_app/screens/icon_image_demo.dart';
import 'package:statewidget_app/screens/layout_demo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Widget Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Widget Demo')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Card(
            child: ListTile(
              title: Text('Text Widget Demo'),
              leading: Icon(Icons.text_fields),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TextWidgetDemo()),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Icon & Image Demo'),
              leading: Icon(Icons.image), // Add leading icon
              trailing: Icon(Icons.arrow_forward), // Add trailing icon
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => IconImageDemo()),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Button Demo'),
              leading: Icon(Icons.smart_button), // Add leading icon
              trailing: Icon(Icons.arrow_forward), // Add trailing icon
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ButtonDemo()),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Container Demo'),
              leading: Icon(Icons.crop_square),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContainerDemo()),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Layout Demo'),
              leading: Icon(Icons.view_column),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LayoutDemo()),
                );
              },
            ),
          ),

          Card(
            child: ListTile(
              title: Text('Card Demo'),
              leading: Icon(Icons.credit_card),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardDemo()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TextWidgetDemo extends StatelessWidget {
  const TextWidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Text Widget Demo')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, Flutter!'),
            SizedBox(height: 20),
            Text(
              'Styled Text',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Gaya Font seperti ini',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.justify, // Align text to the left
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
