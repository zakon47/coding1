import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Like extends StatefulWidget {
  int likes;
  Like({this.likes = 100});
  @override
  _LikeState createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool _isLike = false;

  String _getNumber (){
    return widget.likes > 1000 ? '${(widget.likes/1000).toStringAsFixed(1)}k' : widget.likes.toString();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: IconButton(
        onPressed: (){
          setState(() {
            if(_isLike){
              widget.likes--;
            }else{
              widget.likes++;
            }
            _isLike = !_isLike;
          });
        },
        color: Colors.red,
        icon: Row(
          children: <Widget>[
            Icon(_isLike ? Icons.favorite : Icons.favorite_border),
            SizedBox(
              width: 5,
            ),
            Expanded(child: Text('${_getNumber()}', softWrap: false, overflow: TextOverflow.fade)),
          ],
        ),
      ),
    );
  }
}
