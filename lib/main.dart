import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _size = 30.0;
  final _textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(237, 238, 242, 1),
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            margin: EdgeInsets.all(30.0),
            child: Column(
              children: [
                _header(),
                _Slider(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                        _header(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
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
}

class _Slider extends StatelessWidget {
  final _textStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0);
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _sliderHeader(),
          Container(
            margin: EdgeInsets.only(top: 10.0, bottom: 35.0),
            width: double.infinity,
            height: _size.height * 0.18,
            child: PageView(
              pageSnapping: false,
              controller: PageController(viewportFraction: 0.8),
              children: [
                _SlideCard(),
                _SlideCard(),
                _SlideCard(),
                _SlideCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sliderHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('favourites', style: _textStyle),
        ElevatedButton(
          onPressed: () {},
          child: Text('VIEW ALL'),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Color.fromRGBO(68, 92, 254, 1),
            ),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _SlideCard extends StatelessWidget {
  final image = 'assets/lavadora.png';
  final title = 'Washer Machine';
  final numStar = 4.6;

// _SlideCard(this.image, this.title, this.numStar);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      padding: EdgeInsets.all(18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5.0),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _headerCard(),
          Text(
            title,
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          _contentCard(),
        ],
      ),
    );
  }

  Widget _contentCard() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Ready Wash Stainless', style: TextStyle(fontSize: 11)),
          Text('$numStar', style: TextStyle(fontSize: 11)),
          // Stars(),
        ],
      ),
    );
  }

  Widget _headerCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, width: 30.0),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
              boxShadow: [
                BoxShadow(color: Colors.black12, blurRadius: 3.0),
              ],
            ),
            child: Center(
              child: FaIcon(
                FontAwesomeIcons.solidPaperPlane,
                color: Color.fromRGBO(78, 91, 235, 1),
                size: 15.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Stars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Icon(Icons.star_rate_rounded),
        ],
      ),
    );
  }
}
