import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:megahack/src/widgets/CustomHeaderDelegate.dart';
import 'package:megahack/src/widgets/NewsText.dart';

class ContentView extends StatefulWidget{
  @override
  _ContentViewState createState() => _ContentViewState();
}

class _ContentViewState extends State<ContentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: false,
            floating: true,
            delegate: CustomHeaderDelegate(
              maxExtent: 250.0,
              minExtent: 150.0,
            ),
          ),
          SliverFillRemaining(
            child: _buildBody(),
          )
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Stack(
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(),
          child: Padding(
            padding: EdgeInsets.only(
              top: 24,
              left: 24,
              right: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                NewsText(
                  "Isac Moura",
                  top: 10,
                  style: TextStyle(color: Colors.green, fontSize: 14, fontWeight: FontWeight.bold),
                ),
                NewsText(
                  "02/05/2020",
                  bottom: 10,
                  style: TextStyle(fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w400),
                ),
                NewsText(
                  "Com as medidas de distanciamento social adotadas em alguns estados durante a pandemia de coronavírus,"
                      "ONGs e protetores dos animais afirmam que a procura por adoção de cães e gatos teve um aumento de até"
                      "50% no período de quarentena. Muitos dos que cuidam de animais em abrigos temporários enxergam um"
                      "cenário positivo, mas também há quem faça ressalvas sobre o aumento repentino e liste pontos a"
                      "considerar antes de se decidir por adotar um companheiro.",
                  top: 10,
                  style: TextStyle(fontSize: 20, color: Colors.black54, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

}