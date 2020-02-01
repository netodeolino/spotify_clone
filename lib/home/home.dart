
import 'package:flutter/material.dart';
import 'package:spotify_clone/home/heavy_rotation.dart';
import 'package:spotify_clone/home/recently_played.dart';
import 'package:spotify_clone/home/new_releases.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 15, top: 15),
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.settings, color: Colors.white),
                onPressed: () {},
              )
            ],
          ),
        ),
        RecentlyPlayed(),
        HeavyRotation(),
        NewReleases(),
      ],
    );
  }
}