import 'package:flutter/material.dart';
import 'package:spotify_clone/album.dart';

class HeavyRotation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Your heavy rotation',
              style: TextStyle(color: Colors.white, fontSize: 26),
            )
          ],
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 195,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Album(color: Colors.grey, name: 'AC/DC', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTLDKyPY4kfqmH9h-j0tqXFaVtsemBgN6hcCoNYiO92I4i2byMO'),
              SizedBox(width: 15),
              Album(color: Colors.grey, name: 'Metallica', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS5EQ9IA9i94XncF8RB38oa6O6xYueAmch2oLedrhPo-BnJTi2i'),
              SizedBox(width: 15),
              Album(color: Colors.grey, name: 'The Beatles', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSJVeG4onKo57adcUoY76pgmhaQy9mao1qO314eiK_S9S134u11'),
              SizedBox(width: 15),
              Album(color: Colors.grey, name: 'Nirvana', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQKyzNWi_TQE8h8Rgq7VQZlt-Zok25XyF8D5g7rBGNsheDkJ_FQ'),
              SizedBox(width: 15),
            ],
          ),
        ),
      ],
    );
  }
}