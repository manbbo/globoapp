import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomHeaderDelegate extends SliverPersistentHeaderDelegate {
  CustomHeaderDelegate({this.minExtent, @required this.maxExtent});

  final double minExtent;
  final double maxExtent;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.network(
          "https://diariodamanha.com/wp-content/uploads/2019/02/doguinho-esta.jpg",
          fit: BoxFit.cover,
        ),
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black54],
                  stops: [0.5, 1.0],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  tileMode: TileMode.repeated)),
        ),
        Positioned(
          left: 16,
          right: 16,
          bottom: 16,
          child: Text(
            "Procura por adoção de cães e gatos cresce na pandemia",
            style: TextStyle(
                fontSize: 32,
                color: Colors.white.withOpacity(titleOpacity(shrinkOffset))),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).padding.top + 5,
            child: IconButton(
              icon: Stack(
                children: [
                  Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )
                ],
              ),
              onPressed: () => Navigator.pop(context, false),
            ))
      ],
    );
  }

  double titleOpacity(double shrinkOffset) {
    return 1.0 - max(0.0, shrinkOffset) / maxExtent;
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }

  @override
  FloatingHeaderSnapConfiguration get snapConfiguration => null;
}
