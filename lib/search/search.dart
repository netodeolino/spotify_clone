import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.black,
            floating: false,
            pinned: true,
            expandedHeight: 220,
            centerTitle: true,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [ Colors.white12, Colors.black ]
                ),
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(80),
              child: Column(
                children: <Widget>[
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  SizedBox(height: 20),
                  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Artirts, songs, or podcasts",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.black),
                      prefixIcon: Icon(Icons.search, color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      )
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.only(top: 20)),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  height: 150,
                  width: 150,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('Grid Item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}