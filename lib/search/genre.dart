import 'package:flutter/material.dart';

class Genre extends StatefulWidget {
  final String name;

  Genre({Key key, @required this.name});

  @override
  _GenreState createState() => _GenreState();
}

class _GenreState extends State<Genre> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(widget.name, style: TextStyle(color: Colors.white, fontSize: 18))
        ],
      ),
    );
  }
}