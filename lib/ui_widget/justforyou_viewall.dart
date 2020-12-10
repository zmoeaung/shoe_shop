import 'package:flutter/material.dart';

class JustForYou extends StatelessWidget {
  const JustForYou({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text('Just For You',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
          Text('VIEW ALL',style: TextStyle(fontSize: 14,color: Colors.cyanAccent))

      ],)
    );
  }
}