import 'package:flutter/material.dart';
import 'package:shoes_shop/model/hitem.dart';
import 'dart:math' as math;

detailCurve(HItem hItem, BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Container(
    color: hItem.color,
    child: Stack(
      children: [
        Container(
          width: size.width,
          height: size.height,
          child: CustomPaint(painter: MyPainter()),
        ),
        Positioned(
            top: size.height * 0.02,
            left: size.width * .02,
            child: Transform.rotate(
                angle: 180 * math.pi / 98,
                child: Image.network(
                  hItem.shoeImagelink,
                  width: size.width * .9,
                  height: size.height * 0.28,
                ))),
        Positioned(
            top: size.height * 0.35,
            left: size.width * 0.08,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                child: Text(
                  hItem.titleText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(
                  hItem.subtitleText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                    size: 20,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow[600],
                    size: 20,
                  ),
                  Icon(
                    Icons.star_border,
                    color: Colors.grey,
                    size: 20,
                  ),
                  Text(
                    '128 reviews',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.03),
                child: Text(
                  'DETAILS',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: size.width * .9,
                margin: EdgeInsets.only(top: size.height * 0.02),
                child: Text(
                  'Monochromatic suede renditions of the Air Jordan 1 hit retailers via 2017’s Suede Collection. Here, we see the Air Jordan 1 Retro High receive a tonal blue makeover. It’s constructed with a buttery suede throughout the entire upper.',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: size.height * 0.02),
                child: Text(
                  'COLOR OPTIONS',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: size.height * 0.01),
                  child: Row(
                    children: [
                      Icon(
                        Icons.circle,
                        color: Colors.blueAccent,
                        size: 25,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.greenAccent,
                        size: 25,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.orange[600],
                        size: 25,
                      ),
                      Icon(
                        Icons.circle,
                        color: Colors.redAccent,
                        size: 25,
                      ),
                    ],
                  )),
            ])),
        Positioned(
            top: size.height * 0.75,
            child: Container(
                width: size.width,
                height: size.height * 0.12,
                decoration: BoxDecoration(
                  color: Colors.white,
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
                margin: EdgeInsets.only(top: size.height * 0.02),
                child: Container(
                  margin: EdgeInsets.fromLTRB(size.width * 0.04,
                      size.height * 0.0, size.width * 0.05, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            
                            margin: EdgeInsets.fromLTRB(0, size.height*0.02, 0, size.height * 0.01),
                            child: Text(
                              'PRICE',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                          Text(
                            hItem.price,
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Container(
                        width: size.width * 0.5,
                        height: size.height * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
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
                        child: Center(child: Text('ADD CART',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                      ),
                    ],
                  ),
                )))
      ],
    ),
  );
}

class MyPainter extends CustomPainter {
  // Color colors;
  //  MyPainter(this.colors);
  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;
    Path path = Path();
    Paint paint = Paint();
    paint.style = PaintingStyle.fill;
    paint.color = Colors.white;
    paint.strokeWidth = 5;
    path.moveTo(0, height * 0.35);
    path.quadraticBezierTo(0, height * .2, width * .18, height * 0.23);
    path.lineTo(width * 0.7, height * 0.31);
    path.quadraticBezierTo(width * .98, height * 0.35, width, height * 0.45);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.lineTo(0, height * .35);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
