import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:practica_04/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(237, 238, 242, 1),
      ),
      home: HomePage(),
    );
  }

  
}

class Cards extends StatelessWidget {
  final title;
  final numStar;

  const Cards(this.title, this.numStar);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(_size.width * 0.03),
      margin: EdgeInsets.symmetric(
        vertical: _size.width * 0.015,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: _contentCards(),
    );
  }

  Widget _contentCards() {
    return Row(
      children: [
        Image.asset('assets/$title.png', width: 50.0),
        SizedBox(width: 20.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text('$numStar'),
          ],
        ),
        Expanded(child: SizedBox()),
        FaIcon(
          FontAwesomeIcons.ellipsisV,
          color: Color.fromRGBO(208, 208, 210, 1),
        ),
      ],
    );
  }
}


