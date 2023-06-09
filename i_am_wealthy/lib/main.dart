import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Center(
          child:Text('I Am Wealthy'),
        ),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/CEO.webp'),
        ),
      ),
    ),
  ));
}
