import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> with TickerProviderStateMixin {
  TabController _tabControllerGender;
  TabController _tabControllerOptions;

  @override
  void initState() {
    _tabControllerGender = new TabController(vsync: this, length: 2);
    _tabControllerOptions = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            child: TabBar(
              controller: _tabControllerGender,
              tabs: <Widget>[
                Tab(child: Text('Music', style: TextStyle(fontSize: 26))),
                Tab(child: Text('Podcasts', style: TextStyle(fontSize: 26))),
              ],
            ),
          ),
          Container(
            height: 70,
            child: TabBarView(
              controller: _tabControllerGender,
              children: <Widget>[
                Text('1', style: TextStyle(color: Colors.white)),
                Text('2', style: TextStyle(color: Colors.white))
              ],
            )
          )
        ],
    );
  }
}