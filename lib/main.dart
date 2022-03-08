// █ ▀█▀ █░█░█ ▀█   █▀▀ █ █▄░█ ▄▀█ █░░   █▀█ █▀█ █▀█ ░░█ █▀▀ █▀▀ ▀█▀
// █ ░█░ ▀▄▀▄▀ █▄   █▀░ █ █░▀█ █▀█ █▄▄   █▀▀ █▀▄ █▄█ █▄█ ██▄ █▄▄ ░█░

// ░░█ ▄▀█ █▄█ █░█ ▄▀█ █▀█ █▀▄ █░█ ▄▀█ █▄░█   █▀█ ▄▀█ ▀█▀ █ █░░
// █▄█ █▀█ ░█░ ▀▄▀ █▀█ █▀▄ █▄▀ █▀█ █▀█ █░▀█   █▀▀ █▀█ ░█░ █ █▄▄

// ▒█▀▀█ ▀▀█▀▀ ▄█░ ▄▀▀▄ ▒█▀▀▀ ▒█▀▀█ ▒█▀▀▀ █▀▀█ █▀▀ ▀▀▀█
// ▒█▀▀▄ ░▒█░░ ░█░ ▀▄▄█ ▒█▀▀▀ ▒█░░░ ▒█▀▀▀ █▄▀█ ▀▀▄ ░░█░
// ▒█▄▄█ ░▒█░░ ▄█▄ ░▄▄▀ ▒█▄▄▄ ▒█▄▄█ ▒█▄▄▄ █▄▄█ ▄▄▀ ░▐▌░

// Firebase Link: https://pinterest-clone-15c12.web.app/#/
// Video Link: https://drive.google.com/file/d/119GPh-HvnPR9S9uQPNcjTjS6dfm3cP12/view?usp=sharing

import 'package:flutter/material.dart';
import 'package:hovering/hovering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pinterest',
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  List<String> imageList = [
    "assets/1.jpg",
    "assets/2.jpg",
    "assets/gif2.gif",
    "assets/4.jpg",
    "assets/5.jpg",
    "assets/6.jpg",
    "assets/7.jpg",
    "assets/gif3.gif",
    "assets/9.jpg",
    "assets/10.jpg",
    "assets/11.jpg",
    "assets/12.jpg",
    "assets/13.jpg",
    "assets/14.jpg",
    "assets/15.jpg",
    "assets/16.jpg",
    "assets/gif4.gif",
    "assets/18.jpg",
    "assets/19.jpg",
    "assets/20.jpg",
    "assets/21.jpg",
    "assets/22.jpg",
    "assets/23.jpg",
    "assets/tenor.gif",
  ];
  MyHomePage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // leading : Leading
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 600,
        leading: Builder(
          builder: (BuildContext context) {
            return Container(
                child: Row(children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5),
                child: Image.asset("assets/pinterest.png"),
              ),
              HoverWidget(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: FlatButton(
                      child: Text(
                        "Home",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  hoverChild: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.grey),
                    child: FlatButton(
                      child: Text(
                        "Home",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  onHover: (event) {}),
              HoverWidget(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: FlatButton(
                      child: Text(
                        "Today",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  hoverChild: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.grey),
                    child: FlatButton(
                      child: Text(
                        "Today",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {},
                    ),
                  ),
                  onHover: (event) {}),
            ]));
          },
        ),
        actions: <Widget>[
          HoverWidget(
              child: Container(
                margin: EdgeInsets.only(bottom: 7, top: 7, right: 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.grey[200]),
                width: 800.0,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Search"),
                ),
              ),
              hoverChild: Container(
                margin: EdgeInsets.only(bottom: 7, top: 7, right: 200),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.grey[400]),
                width: 800.0,
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: new InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                      hintText: "Search"),
                ),
              ),
              onHover: (event) {}),
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HoverWidget(
                    child: IconButton(
                      icon: Icon(
                        Icons.notifications,
                      ),
                      onPressed: () {},
                    ),
                    hoverChild: Container(
                        color: Colors.grey,
                        child: IconButton(
                          icon: Icon(
                            Icons.notifications,
                          ),
                          onPressed: () {},
                        )),
                    onHover: (event) {}),
                HoverWidget(
                    child: IconButton(
                      icon: Icon(
                        Icons.chat,
                      ),
                      onPressed: () {},
                    ),
                    hoverChild: Container(
                        color: Colors.grey,
                        child: IconButton(
                          icon: Icon(
                            Icons.chat,
                          ),
                          onPressed: () {},
                        )),
                    onHover: (event) {}),
                HoverWidget(
                    child: IconButton(
                      icon: Icon(
                        Icons.account_circle,
                      ),
                      onPressed: () {},
                    ),
                    hoverChild: Container(
                        color: Colors.grey,
                        child: IconButton(
                          icon: Icon(
                            Icons.account_circle,
                          ),
                          onPressed: () {},
                        )),
                    onHover: (event) {}),
                HoverWidget(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_drop_down,
                      ),
                      onPressed: () {},
                    ),
                    hoverChild: Container(
                        color: Colors.grey,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_drop_down,
                          ),
                          onPressed: () {},
                        )),
                    onHover: (event) {}),
              ],
            ),
          )
        ],
      ),
      body: Container(
        child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            padding: const EdgeInsets.all(12.0),
            itemCount: imageList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: HoverWidget(
                    child: Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          imageList[index],
                        ),
                      ),
                    ),
                    hoverChild: Stack(
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              child: Image.asset(imageList[index],
                                  color: Color.fromRGBO(255, 255, 255, 0.4),
                                  colorBlendMode: BlendMode.modulate)),
                        ),
                        Positioned(
                          // right: 37,
                          child: Row(
                            children: <Widget>[
                              IconButton(
                                  icon: Icon(
                                    Icons.link,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    Icons.arrow_downward,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(
                                    Icons.share,
                                  ),
                                  onPressed: () {}),
                              IconButton(
                                  icon: Icon(Icons.more_horiz),
                                  onPressed: () {})
                            ],
                          ),
                        )
                      ],
                    ),
                    onHover: (event) {}),
              );
            },
            staggeredTileBuilder: (index) {
              return StaggeredTile.fit(1);
            }),
      ),
    );
  }
}
