
import 'package:flutter/material.dart';
import 'package:spotify_clone/heavy_rotation.dart';
import 'package:spotify_clone/new_releases.dart';
import 'package:spotify_clone/recently_played.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 15, top: 15),
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Icon(Icons.settings, color: Colors.white)
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