import 'package:flutter/material.dart';

class DisplayScreen extends StatelessWidget {
  final String imagepath;
  const DisplayScreen({
    super.key,
    required this.imagepath,
    });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Display Screen'),
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
      ),
      //body: Image.file(file(imagepath)),
    );
  }
}