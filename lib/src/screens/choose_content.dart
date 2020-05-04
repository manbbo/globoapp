import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
import '../widgets/content.dart';
import './content_view.dart';
import 'package:flutter/foundation.dart';

class ChooseContent extends StatefulWidget {
  @override
  _ChooseContentState createState() => _ChooseContentState();
}

class _ChooseContentState extends State<ChooseContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(icon: Icon(Icons.navigate_next, color: Colors.white, size: 20,),),
        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage())); },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
                        newsName: "Procura por adoção de cães e gatos cresce na pandemia",
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
                        topicName: "Economia",
                        newsName: "Bovespa começa maio operando em forte queda",
                        imgUrl: "https://s2.glbimg.com/XoRB1EVE2_MWoxxhAlPDLQznraI=/540x304/top/smart/https://i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/W/7/RaokEcQPefLb2yrqIAwQ/kxilq-varia-o-do-ibovespa-em-2020-3-.png",
                        color: Colors.amber,
                      ),
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext ctx) {
                            return new ContentView();
                          }))),
                  InkWell(
                      child: Content(
                        topicName: "corona\nvirus",
                        newsName: "Aldir Blanc, compositor e escritor, morre no Rio",
                        imgUrl: "https://s2.glbimg.com/4tXSL6-EO_dfJ5XUDudezH66R58=/240x135/top/smart/filters:strip_icc()/s2.glbimg.com/OhWUJMxguwxKPQwIeIsLlfLPc38=/0x117:2598x1576/267x150/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/g/m/u5APd4RnmbE0dmIpMLiw/age20200415011.jpg",
                        color: Colors.redAccent,
                      ),
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext ctx) {
                            return new ContentView();
                          }))),
                  InkWell(
                      child: Content(
                        topicName: "bbb",
                        newsName: "Ex-BBB Daniel fala da ansiedade pela primeira vez com Marcela",
                        imgUrl: "https://s2.glbimg.com/44ef-vyFmWxoXbeSTCSbGQYisjY=/398x224/top/smart/filters:strip_icc()/s2.glbimg.com/3kkcyXQ8iwksilyJdTCc2O3Sy6s=/0x76:1280x797/398x224/i.glbimg.com/og/ig/infoglobo/f/original/2020/04/30/img-20200428-wa0073.jpg",
                        color: Colors.deepOrange,

                      ),
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext ctx) {
                            return new ContentView();
                          }))),
                  InkWell(
                      child: Content(
                        topicName: "Mundo",
                        newsName: "Remessas de brasileiros nos EUA caem até 90%, mas podem aliviar auge da crise no Brasil",
                        imgUrl: "https://s2.glbimg.com/6qVfB55S2Zw8oozAz5hc_auDdyk=/540x304/top/smart/https://i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2016/2/y/g2Ek6eRXqOIBr3UBgC7A/2016-12-14t130811z-1-lynxmpecbd0td-rtroptp-3-brazil-ratings-economy.jpg",
                        color: Colors.blue,
                      ),
                      onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext ctx) {
                            return new ContentView();
                          }))),
                  Container(height: 5,),
                  Container(
                      color: Colors.blue,
                      height: 80,
                      child: Stack(
                        children: <Widget>[
                          Container(padding: EdgeInsets.only(top: 15),
                            alignment: Alignment.topCenter,
                            child: Text.rich(TextSpan(text:'globo.com', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold))),),
                          Container( padding: EdgeInsets.only(top: 47),
                            alignment: Alignment.topCenter,
                            child: Text.rich(TextSpan(text: '© Copyright 2000-2020 Globo Comunicação e Participações S.A.', style: TextStyle(fontSize: 10, color: Colors.white))),)
                        ],
                      )),
                ],
              ),
            ),
          )
        ],
      ),
      resizeToAvoidBottomInset: true,
      drawer: Drawer(
        child: Text('DRAWER'),
      ),
    );
  }
}
