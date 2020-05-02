import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './src/widgets/content.dart';

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
      home: MyHomePage(
        title: "GLOBO",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text.rich(TextSpan(text:"globo.com", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)))
      ),
      drawer: Drawer(
        child: Text('Drawer'),
      ),
      body: //child: Content(topicName: "Teste",)
          ListView(
        children: <Widget>[
          MainContent(topicName: "Principais Noticias", newsName: "Bolsonarista ataca câmera de jornalista em ato",),
          Content(topicName: "notícias quentes", newsName: "Bolsonarista ataca bolsonaro",),
          Content(topicName: "notícias frias", newsName: "Bolsonarista ataca bolsonaro",),
          Content(topicName: "notícias amareladas", newsName: "Bolsonarista ataca bolsonaro",),
          Content(topicName: "notícias verdes", newsName: "Bolsonarista ataca bolsonaro",),
        ],
      ),
      bottomSheet: Container(
        height: 50,
        alignment: Alignment.center,
        child: Text('RODAPE'),
      ),
    );
  }
}
