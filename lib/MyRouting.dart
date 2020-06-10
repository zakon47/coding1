import 'package:flutter/material.dart';

class MyRouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.menu),
          color: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton( 
            onPressed: (){},
            icon: Icon(Icons.settings, color: Colors.white),
          ),
        ],
      ),
      body: SafeArea(
        child: Align(
          alignment: Alignment.center,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: <Widget>[
              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/page1');
                },
                child: Text('Первая страница',),
                color: Colors.cyan[200],
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/page2');
                },
                child: Text('Вторая страница'),
                color: Colors.cyan[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
