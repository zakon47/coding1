import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyContainer"),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 100),
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.red),
          image: DecorationImage(
            image: Image.network("https://priumnojay.ru/wp-content/uploads/2019/11/onlajn-i-offlajn.jpg").image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
