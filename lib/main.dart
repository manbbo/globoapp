import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './src/widgets/content.dart';
import 'src/screens/content_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String newsTitle =
      "Procura por adoção de cães e gatos cresce na pandemia";
  final globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: IconButton(
              icon: Icon(
                Icons.list,
                color: Colors.blue,
                size: 40,
              ),
              onPressed: () {
                globalKey.currentState.openDrawer();
              },
            ),
            pinned: true,
            //expandedHeight: 0.0,
            floating: true,
            backgroundColor: Colors.white,
            automaticallyImplyLeading: true,
            stretch: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.only(left: 30, top: 5, bottom: 10),
              collapseMode: CollapseMode.parallax,
              centerTitle: true,
              title: Text.rich(TextSpan(
                  text: "globo.com",
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue))),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              child: ListView(
                padding: EdgeInsets.only(top: 3),
                children: <Widget>[
                  InkWell(
                      child: MainContent(
                        topicName: "Principais Noticias",
                        newsName: newsTitle,
                      ),
                      onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext ctx) {
                            return new ContentView();
                          }))),
                  Container(
                    width: 30,
                  ),
                  InkWell(
                      child: Content(
                        topicName: "notícias quentes",
                        newsName: newsTitle,
                      ),
                      onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext ctx) {
                            return new ContentView();
                          }))),
                  InkWell(
                      child: Content(
                        topicName: "notícias frias",
                        newsName: newsTitle,
                      ),
                      onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext ctx) {
                            return new ContentView();
                          }))),
                  InkWell(
                      child: Content(
                        topicName: "notícias amareladas",
                        newsName: newsTitle,
                      ),
                      onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext ctx) {
                            return new ContentView();
                          }))),
                  InkWell(
                      child: Content(
                        topicName: "notícias verdes",
                        newsName: newsTitle,
                      ),
                      onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext ctx) {
                            return new ContentView();
                          }))),
                ],
              ),
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: true,
      bottomSheet: Container(
          height: 50,
          alignment: Alignment.bottomCenter,
          child: Center(
            child: Text('IM HERE'),
          )),
      drawer: Drawer(
        child: Text('DRAWER'),
      ),
    );
  }
}
