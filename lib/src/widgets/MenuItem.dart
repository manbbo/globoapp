import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final VoidCallback action;

  MenuItem(this.title, this.action);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: ListTile(
        contentPadding: EdgeInsets.only(left: 25, top: 0, bottom: 0),
        title: Text(title, style: TextStyle(fontSize: 14, color: Colors.black54,
        fontWeight: FontWeight.w500)),
      ),
    );
  }
}
