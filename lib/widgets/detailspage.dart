import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class DetailsPage extends StatelessWidget {

  final data;
  DetailsPage({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Padding(
          padding: const EdgeInsets.only(right:30.0),
          child: Center(child: Text("Second page")),
        ),
      ),

      body: Center(
        child: Container(
          height: 400,
          width: 300,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            elevation: 10.0,
            color: Colors.white,
            child: Center(child: Text(data["text"])),
          ),
        ),
      ),
    );
  }
}
