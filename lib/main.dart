import 'package:flutter/material.dart';
import 'package:shoes_shop/ui_widget/categories_bar.dart';
import 'package:shoes_shop/ui_widget/justforyou_viewall.dart';
import 'package:shoes_shop/ui_widget/listview_shoes.dart';
import 'package:shoes_shop/ui_widget/listview_vertical.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  Color color0 = Colors.black;
  Color colorhome = Colors.blueAccent;
  Color colormenu = Colors.black;
  Color colorshopping = Colors.black;
  Color colorperson = Colors.black;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    List<Widget> _widgetOptions = <Widget>[
      Body(),
      Center(
        child: Text(
          'Menu',
        ),
      ),
      Center(
        child: Text(
          'Shopping Cart',
        ),
      ),
      Center(
          child: Text(
        'Persons',
      )),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          elevation: 0,
        ),
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          height: size.height * 0.09,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined), label: ''),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline), label: ''),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.teal[600],
              unselectedItemColor: Colors.black,
              onTap: _onItemTapped,
            ),
          ),
        ));
  }
}

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategorySearch(),
          listViewShoes(context),
          JustForYou(),
          listViewVertial(context)
        ],
      ),
    );
  }
}
