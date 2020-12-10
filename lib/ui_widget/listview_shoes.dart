import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shoes_shop/model/hitem.dart';
import 'package:shoes_shop/ui_widget/shoes_items.dart';

listViewShoes(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return Container(
                width: size.width,
               height: size.height / 2.4,
      child: ListView(
       scrollDirection: Axis.horizontal,
        children:[
         shoeItem(HItem(Colors.lightBlue[600],"https://i.imgur.com/zCSOq8K.png","https://i.imgur.com/wqM2BZi.png",'Nike Air Jordan','1 Retro Hight','\$184'),context),
            Container(
              margin: EdgeInsets.only(left: 10),
             child: shoeItem(HItem(Colors.cyan[600],"https://i.imgur.com/zCSOq8K.png","https://i.imgur.com/A8KAe9Y.png",'Air Jordan','Retro Hight','\$200'),context)),
              Container(
              margin: EdgeInsets.only(left: 10),
             child: shoeItem(HItem(Colors.grey[600],"https://i.imgur.com/zCSOq8K.png","https://i.imgur.com/mkHAx9d.png",'All Star Jordan','1 Retro Hight','\$200'),context)),
             Container(
              margin: EdgeInsets.only(left: 10),
             child: shoeItem(HItem(Colors.red[600],"https://i.imgur.com/zCSOq8K.png","https://i.imgur.com/0NHg0I1.png",'Air Jordan 1','Retro Hight','\$200'),context)),
          
      ]),
    );
  }
