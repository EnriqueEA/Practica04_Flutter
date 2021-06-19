import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SliderOwn extends StatelessWidget {
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
            height: _size.height * 0.20,
            child: PageView(
              pageSnapping: false,
              controller: PageController(viewportFraction: 0.8, initialPage: 1),
              children: [
                _SlideCard('assets/lavadora.png', 'Washer Machine', 4.6),
                _SlideCard('assets/lavadora.png', 'Washer Machine', 4.6),
                _SlideCard('assets/horno.png', 'Dryer Machine', 3.4),
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
  final image;
  final title;
  final numStar;

  _SlideCard(this.image, this.title, this.numStar);
  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      padding: EdgeInsets.all(_size.height * 0.025),
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
      margin: EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Ready Wash Stainless',
            style: TextStyle(fontSize: 11, color: Colors.black38),
          ),
          Text(
            '$numStar',
            style: TextStyle(fontSize: 11, color: Colors.black38),
          ),
          // Stars(),
        ],
      ),
    );
  }

  Widget _headerCard() {
    return Container(
      margin: EdgeInsets.only(bottom: 13.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, width: 35.0),
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
