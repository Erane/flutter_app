import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'my Flutter',
      home: new Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.white,
            elevation: 1.0,
            title: new Text(
              '豆瓣',
              style: new TextStyle(
                  color: Color.fromARGB(255, 0, 182, 0),
                  fontWeight: FontWeight.bold),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                color: Color.fromARGB(255, 0, 182, 0),
                onPressed: () => debugPrint('go'),
              ),
            ],
          ),
          body: new CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(8.0),
                sliver: new SliverGrid(
                  //Grid
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, //Grid按两列显示
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 20.0,
                  ),
                  delegate: new SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      //创建子widget
                      return new Column(
                        children: <Widget>[
                          new Image(
                            fit: BoxFit.contain,
                            image: new NetworkImage(
                                'https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2541280047.jpg'),
                          ),
                          new Text(
                            '海王',
                            style: new TextStyle(color: Colors.greenAccent),
                          )
                        ],
                      );
                    },
                    childCount: 20,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class InitListView extends StatefulWidget {
  @override
  _ListViewState createState() => new _ListViewState();
}

class _ListViewState extends State<InitListView> {
  static const loadingTag = "##loading##";
  var _words = <String>[loadingTag];

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Image(
          fit: BoxFit.contain,
          image: new NetworkImage(
              'https://img1.doubanio.com/view/photo/m_ratio_poster/public/p2541280047.jpg'),
        ),
        new Text(
          '海王',
          style: new TextStyle(color: Colors.greenAccent),
        )
      ],
    );
  }
}
