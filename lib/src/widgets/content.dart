import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainContent extends StatefulWidget {
  final String topicName, newsName;

  MainContent({this.topicName, this.newsName});

  @override
  _MainContentState createState() => _MainContentState(this.newsName, this.topicName);
}

class _MainContentState extends State<MainContent> {
  String topicName, newsName;
  String imgUrl = "https://diariodamanha.com/wp-content/uploads/2019/02/doguinho-esta.jpg";

  _MainContentState(String newsName, String topicName) {
    this.topicName = topicName;
    this.newsName = newsName;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top:10),
            alignment: Alignment.topLeft,
            child: Text.rich(TextSpan(
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                  fontFamily: 'Times New Roman'
                ),
                text: topicName.toUpperCase()
            )),
            height: 50,
          ),
          Container(width: 30,),
          Container(
            height:300,
            child: CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int itemIndex) => Container(
                    padding: EdgeInsets.all(2),
                    child:
                    Stack(children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: Image.network(imgUrl,
                            width: 600,
                            height: 300,)
                      ),
                      Container(
                        margin: EdgeInsets.only(top:200),
                        padding: EdgeInsets.only(left: 20),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10))
                        ),
                        //width: 300,
                          height: 85,
                          child: Text.rich(TextSpan(text: newsName + "\n", style: TextStyle(fontSize: 20, color: Colors.white))),
                        alignment: Alignment.bottomCenter,
                      ),
                    ],),
                ),
                options: CarouselOptions(
                  height: 800,
                  viewportFraction: 0.9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )),
          )
        ],
      ),
    );
  }
}

class Content extends StatefulWidget {
  final String topicName, newsName;

  Content({this.topicName, this.newsName});

  @override
  _ContentState createState() => _ContentState(this.topicName, this.newsName);
}

class _ContentState extends State<Content> {
  String topicName, newsName;

  _ContentState(String topicName, newsName) {
    this.topicName = topicName;
    this.newsName = newsName;
  }

  @override
  Widget build(BuildContext context) {
    String imgUrl = "https://diariodamanha.com/wp-content/uploads/2019/02/doguinho-esta.jpg";
    return
    Container(padding: EdgeInsets.only(bottom: 5, top: 5), child:
      Stack(
      children: <Widget>[
            Container(
              width: 420,
              padding: EdgeInsets.only(left: 40),
              height:200,
              child: CarouselSlider.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int itemIndex) => Container(
                      child: Stack(children: <Widget>[
                        ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            child: Image.network(imgUrl,
                              width: 320,
                              height: 260,)
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 7, top: 7),
                          margin: EdgeInsets.only(top:137),
                          decoration: BoxDecoration(
                              color: Colors.black54,
                          ),
                          //width: 300,
                          height: 60,
                          child: Text.rich( TextSpan(text: newsName + "\n", style: TextStyle(fontSize: 15, color: Colors.white))),
                          alignment: Alignment.bottomCenter,
                        ),
                      ],)
                  ),
                  options: CarouselOptions(
                    height: 700,
                    viewportFraction: 0.68,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
            ),


        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.bottomCenter,
          child: Text.rich(TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'Helvetica Neue'
              ),

              text: topicName.toUpperCase()
          ),
          textDirection: TextDirection.rtl,),
          height: 197,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(5)),
        ),
    ]
    ),);
  }
}
