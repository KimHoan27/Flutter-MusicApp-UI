import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/MusicList.dart';
import '../widgets/PlayList.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 6,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff303151).withOpacity(0.6),
              Color(0xff303151).withOpacity(0.9),
            ]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(top: 20, left: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){},
                          child: Icon(
                            Icons.sort_rounded,
                            color: Color(0xff899ccf),
                            size: 30,
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Icon(
                            Icons.more_vert,
                            color: Color(0xff899ccf),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "Music App",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text(
                      "What do you want to hear",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 15, right: 20, bottom: 20),
                      child: Container(
                        height: 50,
                        width: 380,
                        decoration: BoxDecoration(
                          color: Color(0xff31314f),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              height: 50,
                              width: 200,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Search the music",
                                  hintStyle: TextStyle(
                                    color: Colors.white.withOpacity(0.5)
                                  ),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Icon(
                                Icons.search,
                                size: 30,
                                color: Colors.white.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ),
                  const TabBar(
                    isScrollable: true,
                    labelStyle: TextStyle(fontSize: 18),
                    indicator: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 3,
                          color: Color(0xff899ccf),
                        )
                      )
                    ),
                    tabs: [
                      Tab(text: "Music",),
                      Tab(text: "Playlists",),
                      Tab(text: "Favorites",),
                      Tab(text: "Trending",),
                      Tab(text: "New",),
                      Tab(text: "Colection",),

                    ],
                  ),
                  const Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        MusicList(),
                        PlayList(),
                        MusicList(),
                        MusicList(),
                        MusicList(),
                        MusicList(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
