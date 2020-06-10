import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculate'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Декремент/Инкремент'),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: MyCalculate(),
            ),
            Text(
              'Типо вторая работа :)',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCalculate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyCalculateState();
  }
}

class _MyCalculateState extends State<MyCalculate> {
  bool _isShow;
  num _count;

  @override
  void initState() {
    _isShow = false;
    _count = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: Colors.grey)),
      child: Column(
        children: <Widget>[
          _isShow
              ? Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5))),
                          child: IconButton(
                              icon: Icon(Icons.exposure_neg_1),
                              onPressed: () {
                                setState(() {
                                  _count--;
                                });
                              }),
                        ),
                        Container(
                          child: Text('${(_count.toStringAsFixed(0))}'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          child: IconButton(
                              icon: Icon(Icons.exposure_plus_1),
                              onPressed: () {
                                setState(() {
                                  _count++;
                                });
                              }),
                        ),
                      ],
                    ),
                    MaterialButton(
                        child: Text(
                          'Reset count',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        onPressed: () {
                          setState(() {
                            _count = 0;
                          });
                        })
                  ],
                )
              : Container(
                  padding: const EdgeInsets.all(15),
                  child: Text('Content is hide'),
                ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.cyan[100],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(5),
                    bottomRight: Radius.circular(5))),
            child: MaterialButton(
              child: Icon(_isShow ? Icons.close : Icons.search,
                  color: Colors.white),
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  _isShow = !_isShow;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
