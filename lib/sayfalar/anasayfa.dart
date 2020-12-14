import 'package:flutter/material.dart';
import 'package:ilkDenemem/bloclar/anasayfa_bloc.dart';
import 'package:ilkDenemem/sayfalar/harita_sayfasi.dart';

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  AnasayfaBloc _anasayfaBloc;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _anasayfaBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.explore,
            size: 48,
          ),
          backgroundColor: Colors.lightGreen,
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            primaryIconTheme:
                IconThemeData(color: Colors.lightBlue.shade700, size: 48),
          ),
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(icon: Icon(Icons.person), onPressed: null),
                IconButton(icon: Icon(Icons.settings), onPressed: null),
                IconButton(
                    icon: RotatedBox(
                      child: Icon(Icons.view_week),
                      quarterTurns: 1,
                    ),
                    onPressed: null)
              ],
            ),
          ),
        ),
        body: CustomScrollView(
          shrinkWrap: false,
          slivers: [
            SliverAppBar(
              snap: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Expanded(
                  child: Image.asset(
                    "assets/images/2543m.jpg",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                title: Text("Flexible Space"),
              ),
              expandedHeight: 150,
              collapsedHeight: 100,
              floating: true,
            ),
            SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Card(
                        child: Container(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(100, (int index) {
                          return Card(
                            color: Colors.blue[index * 100],
                            child: Container(
                                width: 150.0,
                                child: Column(
                                  children: [
                                    Text("${index}"),
                                    RaisedButton(
                                        child: Text("Haritada Göster"),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HaritaSayfa(),
                                                fullscreenDialog: true),
                                          );
                                        })
                                  ],
                                )),
                          );
                        }),
                      ),
                      decoration: BoxDecoration(shape: BoxShape.circle),
                    )),
                  );
                }),
                itemExtent: 200),
          ],
        ));
  }
}
