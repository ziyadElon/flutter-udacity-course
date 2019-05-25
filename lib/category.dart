import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final _height = 100.0;
  final _borderRadius = 50.0;
  final Color color;
  final Color splash;
  final String text;

  const Category({
    @required this.color,
    @required this.text,
    this.splash 
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
      child: Ink(
        height: _height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(_borderRadius))
        ),
          child: InkWell(
            onTap: () { print(''); },
            splashColor: splash,
            borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
            child: Row(
              children: <Widget>[
                Container(
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Icon(Icons.cake, size: 60)
                  ),
                ),
                Text(text, style: TextStyle(color: Colors.black87, fontSize: 24.0))
              ],
            )
          )
      )
    );
  }
}