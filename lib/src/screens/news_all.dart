import 'package:flutter/material.dart';
import '../widgets/content.dart';
import '../screens/homepage.dart';

class ViewAll extends StatefulWidget {
  @override
  _ViewAllState createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  final globalKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: Stack(children: <Widget>[
        IconButton(
          padding: EdgeInsets.only(top:50),
          icon: Icon(Icons.arrow_back),
          onPressed: () {Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext ctx) {return new MyHomePage();}));},
        ),
        GridView.builder(
            padding: EdgeInsets.only(top: 100),
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
            itemCount: 20,
            itemBuilder: (BuildContext context, int itemIndex) {
              return new GestureDetector(
                child: new Card(
                  elevation: 5.0,
                  child: new Container(
                    alignment: Alignment.center,
                    child: new News(newsName: "Bovespa começa maio operando em forte queda",
                    imgUrl: "https://s2.glbimg.com/XoRB1EVE2_MWoxxhAlPDLQznraI=/540x304/top/smart/https://i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2020/W/7/RaokEcQPefLb2yrqIAwQ/kxilq-varia-o-do-ibovespa-em-2020-3-.png",),
                  ),
                ),
              );
            }),
      ],)
    );
  }
}