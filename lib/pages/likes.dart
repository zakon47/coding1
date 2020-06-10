import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsi/widgets/like.dart';


class LikesPage extends StatefulWidget {
  @override
  String title;

  LikesPage({this.title = 'Некий заголовок!'});

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<LikesPage> {
  int _isCorrectAnswer = 0;
  int _currentQuestion = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){
//              Route route = MaterialPageRoute(builder: (context)=>Verstka(title: "xaxa"));
//              Navigator.push(context, route);
              String title = "Ещё один заголовок";
              Navigator.pushNamed(context, '/verstka', arguments: title);
            },
            icon: Icon(Icons.satellite),
          )
        ],
        title: Text("${widget.title} - ${_currentQuestion}",
            style: Theme.of(context).textTheme.bodyText1, softWrap: true),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hello'),
            SizedBox(
              width: 200,
              height: 50,
              child: RaisedButton(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                onPressed: () {
                  setState(() {
                    _currentQuestion++;
                  });
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: SizedBox(
                        child: Center(child: Text('${_currentQuestion}', overflow: TextOverflow.fade, softWrap: false,)),
                        width: 20,
                        height: 20,
                      ),
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white54, shape: BoxShape.circle),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                            'Click me plz Click me plz Click me plz Click me plz Click me plz Click me plz',
                            softWrap: true,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(child: Like()),
            Center(child: Like(likes: 798,)),
            Like(likes: 1321,),
          ],
        ),
      ),
    );
  }
}
