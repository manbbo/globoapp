import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  final String title;
  final List<Widget> list;

  const MenuList({this.title, this.list});

  @override
  Widget build(BuildContext context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
            child: buildMenuTitle(this.title),  
          ),
          Divider(
                  height: 5,
                  thickness: 1,
                  color: Colors.grey,
          ),   
          Column(
            children: list,
          )
        ],
      );
  }

  buildMenuTitle(String title){
    return Text('$title', style: TextStyle(fontSize: 18, color: Colors.grey,
    fontWeight: FontWeight.w400));
  }

}