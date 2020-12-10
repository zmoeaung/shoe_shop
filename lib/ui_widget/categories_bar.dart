import 'package:flutter/material.dart';

class CategorySearch extends StatelessWidget {
  const CategorySearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child:Text('Categories',style:TextStyle(color: Colors.black,fontSize: 30,fontWeight: FontWeight.bold)
          ),
          ),
          Container(
            child: Icon(Icons.search,size:35,color:Colors.grey),
          )
        ],
      )
    );
  }
}