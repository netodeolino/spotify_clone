import 'package:flutter/material.dart';

class Album extends StatefulWidget {
  final String name;
  final Color color;
  final String imageUrl;

  Album({Key key, @required this.name, @required this.color, @required this.imageUrl});

  @override
  _AlbumState createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 150,
          height: 150,
          color: widget.color,
          margin: EdgeInsets.only(bottom: 15),
          child: Image.network(widget.imageUrl, fit: BoxFit.fill),
        ),
        Container(
          height: 30,
          width: 150,
          child: Text(
            widget.name,
            style: TextStyle(color: Colors.white, fontSize: 17),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}