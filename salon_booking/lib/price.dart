import 'package:flutter/material.dart';

var Details = [
  {'title': "mens's Hair Cut", 'Duration': 45, 'price': 30},
  {'title': "women's Hair Cut", 'Duration': 60, 'price': 50},
  {'title': "Color & Blow Dry", 'Duration': 90, 'price': 70},
  {'title': "Oil Treatment", 'Duration': 30, 'price': 20},
];

class PriceScreen extends StatelessWidget {
  final styles;
  PriceScreen(this.styles);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network(
                      'https://www.thetrendspotter.net/wp-content/uploads/2020/03/Best-Barbershops-in-Perth.jpg',
                      fit: BoxFit.fill,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.purple.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 30,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
