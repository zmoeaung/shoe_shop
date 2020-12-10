import 'package:flutter/material.dart';
import 'package:shoes_shop/model/hitem.dart';
import 'package:shoes_shop/ui_widget/shoes_vertical_widget.dart';

listViewVertial(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Container(
      width: size.width,
      height: size.height * 0.218,
      child: ListView(
        children: [
          shoeVerticalItem(
              HItem(
                  Colors.red[600],
                  "https://i.imgur.com/zCSOq8K.png",
                  "https://i.imgur.com/0NHg0I1.png",
                  'Nike Air Jordan',
                  '2 Retro Hight',
                  '\$200'),
              context),
          shoeVerticalItem(
              HItem(
                  Colors.grey[600],
                  "https://i.imgur.com/zCSOq8K.png",
                  "https://i.imgur.com/mkHAx9d.png",
                  'Nike Air Jordan',
                  '2 Retro Hight',
                  '\$200'),
              context),
          shoeVerticalItem(
              HItem(
                  Colors.lightBlue[600],
                  "https://i.imgur.com/zCSOq8K.png",
                  "https://i.imgur.com/wqM2BZi.png",
                  'Nike Air Jordan',
                  '1 Retro Hight',
                  '\$184'),
              context),
          shoeVerticalItem(
              HItem(
                  Colors.cyan[600],
                  "https://i.imgur.com/zCSOq8K.png",
                  "https://i.imgur.com/A8KAe9Y.png",
                  'Nike Air Jordan',
                  '2 Retro Hight',
                  '\$200'),
              context),
        ],
      ));
}
