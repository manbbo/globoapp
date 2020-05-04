import 'package:flutter/material.dart';

class NewsText extends StatelessWidget {
  final double bottom;
  final double left;
  final double right;
  final double top;
  final String text;
  final TextStyle style;
  final TextOverflow overflow;
  final bool softWrap;
  final TextAlign textAlign;

  const NewsText(
      this.text, {
        this.top = 0,
        this.bottom = 0,
        this.left = 0,
        this.right = 0,
        this.style,
        this.softWrap = true,
        this.overflow,
        this.textAlign = TextAlign.left,
      });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      EdgeInsets.only(bottom: bottom, left: left, right: right, top: top),
      child: Text(
        text ?? "",
        textAlign: textAlign,
        style: style,
        softWrap: softWrap,
        overflow: overflow,
      ),
    );
  }
}
