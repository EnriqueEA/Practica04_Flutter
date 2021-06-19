import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practica_04/main.dart';
import 'package:practica_04/widgets/slider.dart';

class HomePage extends StatelessWidget {
  final _size = 30.0;
  final _textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 30.0, left: 30.0, right: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                SliderOwn(),
                Text('ALL', style: _textStyle),
                cardsList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: _itemsList()),
      );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu, size: _size),
        Text('Kudos', style: _textStyle),
        Icon(Icons.shopping_bag_outlined, size: _size)
      ],
    );
  }

  List<BottomNavigationBarItem> _itemsList() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home_filled, color: Colors.black26),
        label: ' ',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search, color: Colors.black26),
        label: ' ',
      ),
      BottomNavigationBarItem(
        icon: Stack(
          children: [
            Transform.rotate(
              angle: 0.8,
              child: Center(
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(5.0),
                      bottomRight: Radius.circular(5.0),
                      topRight: Radius.circular(5.0),
                      bottomLeft: Radius.circular(5.0),
                    ),
                    color: Color.fromRGBO(68, 92, 254, 1),
                    boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0))],
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                width: 50.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color.fromRGBO(68, 92, 254, 1),
                  boxShadow: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0))],
                ),
                child: Center(
                  child:
                      FaIcon(FontAwesomeIcons.solidHeart, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        label: ' ',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.comment, color: Colors.black26),
        label: ' ',
      ),
      BottomNavigationBarItem(
        icon: FaIcon(FontAwesomeIcons.user, color: Colors.black26),
        label: ' ',
      ),
    ];
  }

  Widget cardsList() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20.0, bottom: 0.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Cards('Microware Oven', 4.6),
              Cards('Whisk', 3.0),
              Cards('Speackers', 4.6),
              Cards('Air Conditioner', 5.0),
              Cards('Television', 5.0),
              Cards('Speackers', 4.6),
              Cards('Television', 5.0),
              Cards('Whisk', 3.0),
            ],
          ),
        ),
      ),
    );
  }
}