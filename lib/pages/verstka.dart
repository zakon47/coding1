import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nsi/my-container.dart';
import 'package:nsi/widgets/like.dart';

class Verstka extends StatelessWidget {
  String title;

//  Verstka({this.title = 'верстка без имени!'});

  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context).settings;
    title = settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('$title'),
//        title: Text('dsd'),
      ),
      body: Container(
        child: Container(
          child: _buildMainColumn(),
        ),
      ),
    );
  }
}

class _buildMainColumn extends StatefulWidget {
  @override
  __buildMainColumnState createState() => __buildMainColumnState();
}

class __buildMainColumnState extends State<_buildMainColumn> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          _buildHeader(),
          Divider(
            height: 30,
            color: Colors.black87,
          ),
          _buildButtons(),
          Container(
            child: _buildList(),
            decoration: BoxDecoration(
              color: Colors.black26,
              image: DecorationImage(
                  image: Image.asset('assets/img/bg.jpg').image,
                  fit: BoxFit.contain),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() => Card(
        margin: const EdgeInsets.all(10),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Image(
              image: NetworkImage(
            "https://avatars.mds.yandex.net/get-pdb/477388/891ee9df-3932-4dfd-a52e-77e369baa649/s1200",
          )),
        ),
      );

  Widget _buildList() => Container(
        margin: const EdgeInsets.all(5),
        child: Center(
          child: Column(
            children: List.generate(
                50,
                (index) => Card(
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 15),
                        title: Text('Привет - $index}'),
                        trailing: Icon(Icons.search),
                        subtitle: Text(
                          'типо длинное описание!!типо длинное описание!!типо длинное описание!!типо длинное описание!!',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        leading: SizedBox(
                          width: 40,
                          child: Image.network(
                              'https://avatars.mds.yandex.net/get-pdb/1366542/09151d3a-db01-47e7-8ba1-a4fb3850d476/s1200'),
                        ),
                      ),
                    )).toList(),
          ),
        ),
      );
}

class _buildButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        height: 55,
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.search, color: Colors.black87),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.black87),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.favorite, color: Colors.black87),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Like",
                      style: TextStyle(color: Colors.black87),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.access_alarm, color: Colors.black87),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Time",
                      style: TextStyle(color: Colors.black87),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
