import 'package:flutter/material.dart';
import 'package:shoes_shop/model/hitem.dart';

 shoeVerticalItem(HItem hItem,BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top:5),
      
      decoration: BoxDecoration(
      
        color:Colors.white,
         borderRadius: BorderRadius.circular(40),
          boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
      ),
        height: size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                child: Image.network(
             hItem.shoeImagelink,
              width: size.width * 0.2,
            )),
            Container(child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(child: Text(hItem.titleText)),
                 Container(child: Text('NIKE',style: TextStyle(color: Colors.grey,fontSize: 12),)),
            ],) ,),
            Container(child: Text(hItem.price))
          ],
        ));
  }

