import 'package:flutter/material.dart';
import 'price.dart';

const cardsInfo = [
  {
    'stylishName': 'Cameron Jones',
    'SalonName': 'Super Cut Salon',
    'rating': '4.8',
    'image': 'http://freepngdownload.com/image/thumb/face-men-png-image.png',
    'bkgclr': Color(0xffFFF0EB),
  },
  {
    'stylishName': 'Max Robertson',
    'SalonName': 'Rossano Ferretti Salon',
    'rating': '4.8',
    'image':
        'http://freepngdownload.com/image/thumb/business-man-png-free-image-download-4.png',
    'bkgclr': Color(0xffEBF6FF),
  },
  {
    'stylishName': 'Beth Watson',
    'SalonName': 'Neville Hair and Beauty',
    'rating': '4.8',
    'image':
        'https://www.nicepng.com/png/full/638-6386629_francisco-lachowski-png-2018-popular-mens-hairstyles.png',
    'bkgclr': Color(0xffFFF0EB),
  }
];

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4E295B),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Hair Stylist',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      Cards(cardsInfo[0]),
                      Cards(cardsInfo[1]),
                      Cards(cardsInfo[2]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final styles;
  Cards(this.styles);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4 - 12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: styles['bkgclr'],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            right: -35,
            top: 20,
            height: 150,
            child: Image.network(
              styles['image'],
              width: MediaQuery.of(context).size.width * 0.60,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 40,
              left: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  styles['stylishName'],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  styles['SalonName'],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff6B617A),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.star,
                      color: Color(0xff6B617A),
                      size: 16,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      styles['rating'],
                      style: TextStyle(
                        color: Color(0xff6B617A),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 6.5,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PriceScreen(styles)));
                  },
                  color: Color(0xff6B617A),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'View Profile',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
