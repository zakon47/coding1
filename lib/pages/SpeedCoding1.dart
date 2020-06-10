import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

const green = Color(0xff32a060);
const white = Colors.white;
const black = Colors.black;
const grey = Colors.grey;
const greyPlus = Color(0xff2d2732);

class SpeedCoding1 extends StatefulWidget {
  @override
  _SpeedCoding1State createState() => _SpeedCoding1State();
}

class _SpeedCoding1State extends State<SpeedCoding1> {
  Color myColor = green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Stack(
              children: <Widget>[
                _flower(context),
                _txt(context),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'Planting information',
                    style: TextStyle(
                        fontSize: 14,
                        color: white,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      _container(context, 250, 'ml', 'water'),
                      _container(context, 180, 'c', 'Sunshine'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _container(context, num number, String type, String label) =>
      Container(
        decoration: BoxDecoration(
            color:
                myColor == Colors.black ? Color(0x22ffffff) : Color(0x22000000),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        width: MediaQuery.of(context).size.width / 2 - 40,
        height: 85,
        child: Center(
          child: Container(
            width: 75,
            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15,
                ),
                Row(
//                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
//                mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      '$number',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5, left: 5),
                      child: Text(
                        '$type',
                        style: TextStyle(color: white),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text('$label', style: TextStyle(color: white)),
                  ],
                )
              ],
            ),
          ),
        ),
      );

  Widget _flower(context) => Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(75))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 20),
              child: Container(
                width: MediaQuery.of(context).size.width - 180,
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/img/flower.png'),
                        fit: BoxFit.contain)),
              ),
            )
          ],
        ),
      );

  Widget _getColor(Color color) => Container(
        width: 25,
        height: 25,
        margin: const EdgeInsets.only(left: 15),
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        child: MaterialButton(
          elevation: 0,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50))),
          onPressed: () {
            setState(() {
              myColor = color;
            });
          },
          color: Color(0x0055ff69),
        ),
      );

  Widget _txt(context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back, color: black),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        _getColor(green),
                        _getColor(Colors.red),
                        _getColor(Colors.black),
                        _getColor(Colors.orange),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
//            constraints: BoxConstraints.expand(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 300,
                    child: Text('Fiddle Leaf Fig Topiary',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.1,
                            height: 1)),
                  ),
                  SizedBox(height: 10),
                  Text('10" Nursery Pot', style: TextStyle(color: grey)),
                  SizedBox(height: 15),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 9, right: 5),
                          child: Text(
                            '\$',
                            style: TextStyle(
                                color: myColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Text(
                          '85',
                          style: TextStyle(
                              color: myColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 45),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SpeedCoding11(
                                      myColor: myColor,
                                    )));
                      },
                      backgroundColor: myColor,
                      child: Icon(Icons.shopping_cart),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
}

class SpeedCoding11 extends StatelessWidget {
  final Color myColor;

  SpeedCoding11({this.myColor = Colors.green});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        child: Image.asset(
                          'assets/img/flower_icon.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Greenery nyc',
                        style: TextStyle(
                            color: white,
                            fontSize: 22,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                  Container(
                    width: 200,
                    child: Text('Product overview',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            height: 1.1,
                            letterSpacing: 1.1,
                            color: white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Column(
                      children: <Widget>[
                        _buildItem(Icons.watch_later, 'Water', 'every 7 days'),
                        _buildItem(
                            Icons.accessibility, 'Humidity', 'up to 82%'),
                        _buildItem(Icons.photo_size_select_large, 'Size',
                            '38"-48" tdll'),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      _buildTriger('Delivery Information'),
                      SizedBox(
                        height: 15,
                      ),
                      _buildTriger('Return Policy'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          _buildFooter(context)
        ],
      ),
    );
  }

  Widget _buildTriger(String title) => Card(
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), bottomLeft: Radius.circular(50))),
        color: myColor,
        elevation: 10,
        child: GestureDetector(
          onTap: () {
            print('HELLO!');
          },
          child: Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                color: myColor == Colors.black
                    ? Color(0x22ffffff)
                    : Color(0x22000000),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 80, child: Icon(Icons.done, color: white)),
                Text(
                  '$title',
                  style: TextStyle(color: white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      );

  Widget _buildItem(IconData icon, String title, String subtitle) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: <Widget>[
            Icon(icon, color: white),
            SizedBox(width: 15),
            Text(
              title,
              style: TextStyle(fontSize: 20, color: white),
            ),
            Spacer(),
            Text(
              subtitle,
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
          ],
        ),
      );

  Widget _buildFooter(BuildContext context) => Container(
        height: 80,
        child: Row(
          children: <Widget>[
            Container(
//              padding: const EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width / 2,
              child: Center(
                  child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back_ios,
                      color: white,
                      size: 14,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Back',
                      style: TextStyle(color: white),
                    )
                  ],
                ),
              )),
            ),
            Expanded(
              child: Container(
//              width: double.infinity,
                decoration: BoxDecoration(
                    color: greyPlus,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(50))),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(50))),
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                SpeedCoding12(myColor: myColor)));
                  },
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.card_giftcard,
                          color: white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Add to cart',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, color: white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}

class SpeedCoding12 extends StatelessWidget {
  Color myColor;

  SpeedCoding12({this.myColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Stack(
              children: <Widget>[
                _details(context),
                Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: <Widget>[
                          SizedBox(height: 30),
                          Container(
                            margin: EdgeInsets.only(left: 0),
                            child: Row(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(Icons.arrow_back, color: black),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    _buildElement(
                        context,
                        "assets/img/img1.jpg",
                        "Pant Details",
                        "The fiddle leaf fig tree, or ficus lyrara, is a species of plant within the fig genus nativ to the lowland tropical rainforests of Western Africa."),
                    _buildElement(
                        context,
                        "assets/img/img2.jpg",
                        "Pant Details",
                        "The fiddle leaf fig tree, or ficus lyrara, is a species of plant within the fig genus nativ to the lowland tropical rainforests of Western Africa.",
                        true),
                  ],
                ),
              ],
            ),
          ),
          Container(
//            padding: const EdgeInsets.only(top: 10),
            height: 50,
            child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black54,
                      size: 30,
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildElement(
          BuildContext context, String img, String title, String desc,
          [isRight = false]) =>
      Padding(
        padding:
            const EdgeInsets.only(right: 60, left: 40, top: 15, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment:
                  isRight ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: isRight
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
//                      width: 100,
                      height: 100,
                      child: Image.asset(img),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(title,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 30)),
                    )
                  ],
                ),
              ],
            ),
            Text(
              desc,
              style: TextStyle(color: Colors.black54, height: 1.4),
            ),
          ],
        ),
      );

  Widget _details(BuildContext context) => Positioned(
        top: 60,
        right: 0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 80,
              width: 170,
              decoration: BoxDecoration(
                  color: myColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: Center(
                  child: Text(
                'Details',
                style: TextStyle(
                    color: white, fontSize: 20, fontWeight: FontWeight.w600),
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, top: 20, bottom: 10),
              child: Column(
                children: <Widget>[
                  _buildCircle(context),
                  _buildCircle(context),
                  _buildCircle(context),
                ],
              ),
            )
          ],
        ),
      );

  Widget _buildCircle(BuildContext) => Container(
        margin: const EdgeInsets.all(8),
        width: 10,
        height: 10,
        decoration:
            BoxDecoration(color: Colors.black26, shape: BoxShape.circle),
      );
}
