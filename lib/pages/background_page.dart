

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quotesapp/widgets/lastcard.dart';

class backgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.red ,
        elevation: 10.0,
       title: Center(
         child: Text("Quotes App",style: TextStyle(
           color: Colors.white,
           fontSize: 20,
           fontWeight: FontWeight.bold,

         ),),
       ),
      ),
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/SSR1.jpg',),fit: BoxFit.cover,
          ),
          backgroundBlendMode: BlendMode.darken,
          color: Colors.black87,

        ),
          child: Center(child: finalcard(),))



    );
  }
}

