import 'package:flutter/material.dart';
import 'package:shoes_shop/model/hitem.dart';

import 'detail_curve.dart';

class DetailPage extends MaterialPageRoute {
  DetailPage(HItem hItem)
      : super(
            builder: (context) => DetailHome(hItem: hItem,),
              
                );
}

class DetailHome extends StatelessWidget {
 var hItem;
 DetailHome({
    Key key,@required this.hItem
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading:InkWell(
              onTap: () => Navigator.pop(context),
              child: Icon(Icons.arrow_back_ios)),backgroundColor:hItem.color,title: Text('CATEGORIES',style: TextStyle(fontSize: 15),),elevation: 0.0,),

          body: detailCurve(hItem,context)
        );
  }
}


