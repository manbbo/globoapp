import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainContent extends StatefulWidget {
  final String topicName, newsName, imgUrl;

  MainContent(
      {this.topicName,
      this.newsName,
      this.imgUrl =
          "https://diariodamanha.com/wp-content/uploads/2019/02/doguinho-esta.jpg"});

  @override
  _MainContentState createState() =>
      _MainContentState(this.newsName, this.topicName, this.imgUrl);
}

class _MainContentState extends State<MainContent> {
  String topicName, newsName, imgUrl;

  _MainContentState(String newsName, topicName, imgUrl) {
    this.topicName = topicName;
    this.newsName = newsName;
    this.imgUrl = imgUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //alignment: Alignment.topLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top: 10),
            alignment: Alignment.topLeft,
            child: Text.rich(TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontFamily: 'OpenSans',
                ),
                text: topicName.toUpperCase())),
            height: 50,
          ),
          Container(
            width: 20,
          ),
          Container(
            height: 250,
            child: CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int itemIndex) => Container(
                      //padding: EdgeInsets.all(),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0)),
                              child: Image.network(
                                imgUrl,
                                width: 800,
                                height: 300,
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 150),
                            padding: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                color: Colors.black54,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(25),
                                    bottomRight: Radius.circular(25))),
                            //width: 300,
                            height: 85,
                            child: Text.rich(TextSpan(
                                text: newsName + "\n",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold))),
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                options: CarouselOptions(
                  height: 300,
                  viewportFraction: 0.80,
                  aspectRatio: 16 / 9,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: false,
                  //autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                )),
          )
        ],
      ),
    );
  }
}

class News extends StatefulWidget {
  final String newsName, imgUrl;

  News({this.newsName, this.imgUrl});

  @override
  _NewsState createState() => _NewsState(this.newsName, this.imgUrl);
}

class _NewsState extends State<News> {
  String newsName,imgUrl;
  _NewsState(newsName, imgUrl) {
    this.newsName = newsName;
    this.imgUrl = imgUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: Image.network(
                imgUrl,
                width: 320,
                height: 260,
              )),
          Container(
            padding: EdgeInsets.only(left: 7, top: 7),
            margin: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              color: Colors.black54,
            ),
            //width: 300,
            height: 80,
            child: Text.rich(TextSpan(
                text: newsName + "\n",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}

class Content extends StatefulWidget {
  final String topicName, newsName, imgUrl;
  final Color color;

  Content(
      {this.topicName,
      this.newsName,
      this.color,
      this.imgUrl =
          "https://diariodamanha.com/wp-content/uploads/2019/02/doguinho-esta.jpg"});

  @override
  _ContentState createState() =>
      _ContentState(this.topicName, this.newsName, this.color, this.imgUrl);
}

class _ContentState extends State<Content> {
  String topicName, newsName, imgUrl;
  Color color;

  _ContentState(String topicName, newsName, Color color, imgUrl) {
    this.topicName = topicName;
    this.newsName = newsName;
    this.imgUrl = imgUrl;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 0),
      child: Stack(children: <Widget>[
        Container(
          width: 420,
          padding: EdgeInsets.only(left: 40),
          height: 200,
          child: CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int itemIndex) => Container(
                      child: Stack(
                    children: <Widget>[
                      ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          child: Image.network(
                            imgUrl,
                            width: 320,
                            height: 260,
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 7, top: 7),
                        margin: EdgeInsets.only(top: 137),
                        decoration: BoxDecoration(
                          color: Colors.black54,
                        ),
                        //width: 300,
                        height: 60,
                        child: Text.rich(TextSpan(
                            text: newsName + "\n",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                        alignment: Alignment.bottomCenter,
                      ),
                    ],
                  )),
              options: CarouselOptions(
                height: 700,
                viewportFraction: 0.68,
                initialPage: 0,
                enableInfiniteScroll: false,
                reverse: false,
                autoPlay: false,
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: false,
                scrollDirection: Axis.horizontal,
              )),
        ),
        Container(
          padding: EdgeInsets.only(top: 23),
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            alignment: Alignment.bottomCenter,
            child: Text.rich(
              TextSpan(
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Helvetica Neue'),
                  text: topicName.toUpperCase()),
              textDirection: TextDirection.rtl,
            ),
            height: 180,
            width: 92,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ]),
    );
  }
}
