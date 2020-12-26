import 'package:flutter/material.dart';

class BlogMakerScreen extends StatefulWidget {
  @override
  _BlogMakerScreenState createState() => _BlogMakerScreenState();
}

class _BlogMakerScreenState extends State<BlogMakerScreen> {
  String authorName, title, desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Icon(Icons.file_upload))
        ],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 15),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6.0),
              ),
              width: MediaQuery.of(context).size.width,
              child: Icon(
                Icons.add_a_photo,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(hintText: 'Author Name'),
                    onChanged: (value) {
                      authorName = value;
                    },
                  ),
                  SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(hintText: 'Title'),
                    onChanged: (value) {
                      title = value;
                    },
                  ),
                  SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(hintText: 'Description'),
                    onChanged: (value) {
                      desc = value;
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
