import 'package:blogs_app/screens/blog_maker_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return BlogMakerScreen();
                }));
              },
              child: Icon(Icons.add),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Flutter', style: TextStyle(fontSize: 22.0)),
            Text('Blog', style: TextStyle(fontSize: 22.0, color: Colors.blue))
          ],
        ),
      ),
      body: Container(),
    );
  }
}
