import 'package:flutter/material.dart';
import 'package:spotify_clone/home/album.dart';

class RecentlyPlayed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Recently played',
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
              Album(color: Colors.grey, name: 'Zé Neto e Cristiano', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQ8SMrmfjOAR8-5ohBUNRFlzDZjtEpU8OeeyaU75jyiuRB5V3HJ'),
              SizedBox(width: 15),
              Album(color: Colors.grey, name: 'Os Parazim', imageUrl: 'https://www.villamix.com.br/vmf/wp-content/uploads/2019/08/os-parazim.png'),
              SizedBox(width: 15),
              Album(color: Colors.grey, name: 'Gusttavo Lima', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRYh2GUI7fkU5tTSFTUJRIQyVioKTs98pUwDM-dGWZm9BVHOQpr'),
              SizedBox(width: 15),
              Album(color: Colors.grey, name: 'Nedis e banda', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSPTFfuVSiHAFh5dzo_2ymYDcscD5cbPIi8dn7ePWx_6yDcv5WQ'),
              SizedBox(width: 15),
            ],
          ),
        )
      ],
    );
  }
}