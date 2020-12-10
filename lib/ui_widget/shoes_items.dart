import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:shoes_shop/model/hitem.dart';

import 'detail_page.dart';

shoeItem(HItem hItem, BuildContext context) {
  var size = MediaQuery.of(context).size;

  return InkWell(
    onTap: () {
      Navigator.push(context, DetailPage(hItem));
    },
    child: Stack(
      children: [
        Container(
          width: size.width / 1.8,
          height: size.height / 2.4,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: CustomPaint(painter: MyPainter(hItem.color))),
        ),
        Positioned(
            top: size.height * .14,
            left: size.width * .04,
            child: Image.network(
              hItem.logoImageLink,
              width: size.width * .08,
            )),
        Positioned(
            top: size.height * .03,
            left: size.width * .01,
            child: Transform.rotate(
                angle: 180 * math.pi / 98,
                child: Image.network(
                  hItem.shoeImagelink,
                  width: size.width * .53,
                  height: size.height * 0.2,
                ))),
        Positioned(
          top: size.height * 0.3,
          left: size.width * 0.04,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                child: Text(
              hItem.titleText,
              style: TextStyle(color: Colors.white),
            )),
            Container(
                child: Text(
              hItem.subtitleText,
              style: TextStyle(color: Colors.white),
            )),
            Container(
                margin: EdgeInsets.only(top: size.height * 0.01),
                child: Text(
                  hItem.price,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
          ]),
        ),
        Positioned(
          bottom: size.height * 0,
          right: size.width * 0,
          child: ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10)),
                color: Colors.greenAccent,
              ),
              width: size.width * 0.13,
              height: size.height * 0.06,
              child: Center(
                  child: Text('+',
                      style: TextStyle(color: Colors.white, fontSize: 20))),
            ),
          ),
        )
      ],
    ),
  );
}

class MyPainter extends CustomPainter {
  Color colors;
  MyPainter(this.colors);
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = colors;
    paint.strokeWidth = 5;
    path.moveTo(0, height * 0.35);
    path.quadraticBezierTo(0, height * .2, width * .18, height * 0.23);
    path.lineTo(width * 0.7, height * 0.35);
    // path.quadraticBezierTo(width * .38, height * 0.3, width, height * 0.45);
    path.quadraticBezierTo(width * .98, height * 0.4, width, height * 0.5);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.lineTo(0, height * .35);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
