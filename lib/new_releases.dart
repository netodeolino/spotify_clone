import 'package:flutter/material.dart';
import 'package:spotify_clone/album.dart';

class NewReleases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'New releases for you',
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
              Album(color: Colors.grey, name: 'Natiruts', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSpv0t4-4q64HmYylFRr-EXNOK0TSDk5VM3sgwHjiteKM-6os2b'),
              SizedBox(width: 15),
              Album(color: Colors.grey, name: 'Tribo de Jah', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRWMrGjZEsdEpXE1M2vSP_27vMa0fVhlwx2G_hP7iYmjhG5hw0H'),
              SizedBox(width: 15),
              Album(color: Colors.grey, name: 'Cidade Negra', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSsUU94L29b1blRoRw6Eash2cG9TX8ETZ3I1M6z77Xb7pJdUUG8'),
              SizedBox(width: 15),
              Album(color: Colors.grey, name: 'O Rappa', imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSNyJEPMoBO_79caEkj8xwrYkrzXtxqaxUpTfWYUqMSF4vax7gL'),
              SizedBox(width: 15),
            ],
          ),
        ),
      ],
    );
  }
}