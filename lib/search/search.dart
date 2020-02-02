import 'package:flutter/material.dart';
import 'package:spotify_clone/search/genre.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            backgroundColor: Colors.transparent,
            expandedHeight: 200,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                'Search',
                style: TextStyle(color: Colors.white, fontSize: 30)
              ),
              background: Container(
                decoration: new BoxDecoration(
                  gradient: new LinearGradient(
                    colors: [ Colors.white12, Colors.black38 ],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                  ),
                ),
              )
            ),
          ),
        ];
      },
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            children: <Widget>[
              TextField(
                autofocus: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Artirts, songs, or podcasts',
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
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  children: List.generate(20, (index) {
                    return Container(
                      margin: EdgeInsets.only(bottom: 8, top: 8),
                      decoration: BoxDecoration(
                        color: Colors.accents[index % 9],
                        borderRadius: BorderRadius.all(Radius.circular(5))
                      ),
                      child: Genre(name: 'Gênero $index'),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}