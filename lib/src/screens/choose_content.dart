import 'package:flutter/material.dart';
import 'homepage.dart';

class ChooseContent extends StatefulWidget {
  @override
  _ChooseContentState createState() => _ChooseContentState();
}

class _ChooseContentState extends State<ChooseContent> {
  List<bool> disabled = [false,false,false,false,false,false,false,false,false,false];
  Widget createButton(text, int i) {
    //bool disabled = false;
    String finalText;
    return RaisedButton(
    child: Text(this.disabled[i]? "Adicionado" : text ),
      color: Colors.white,
      onPressed: () => this.disabled[i] ? this.disabled[i] = false : this.disabled[i] = true,
      highlightColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: PageView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createButton('Cultura', 0),
                    createButton('Educação', 1),
                    createButton('Saúde', 2),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createButton('Lazer', 3),
                    createButton('Radio', 4),
                    createButton('Fantástico', 5),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createButton('Carros', 6),
                    createButton('Esporte', 7),
                    createButton('Política', 8),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    createButton('Mundo', 9),
                  ],
                ),
                Row(
                  children: <Widget>[],
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          icon: Icon(
            Icons.navigate_next,
            color: Colors.white,
            size: 20,
          ),
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
