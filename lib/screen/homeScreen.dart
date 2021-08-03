import 'package:flutter/material.dart';
import 'package:socialmediaui/data/data.dart';
import 'package:socialmediaui/widgets/custom_drawer.dart';

import 'package:socialmediaui/widgets/post.dart';
import 'package:socialmediaui/widgets/userfollowers.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  late PageController _pageController;
  var currentPagevalue = 0.0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: new CustomDrawer(),
        appBar: AppBar(
          // leading: InkWell(
          //     child: Icon(
          //   Icons.menu,
          //   color: Theme.of(context).primaryColor,
          // )),

          centerTitle: true,
          title: Text(
            'PHOTO - LAB',
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.white,
                fontWeight: FontWeight.w900,
                letterSpacing: 5),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: TabBar(
            physics: BouncingScrollPhysics(),
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorWeight: 2.0,
            labelColor: Colors.white,
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500, letterSpacing: 2, fontSize: 14),
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(Icons.photo, size: 20),
                text: 'Trending',
              ),
              Tab(
                icon: Icon(Icons.featured_play_list, size: 20),
                text: 'Latest',
              ),
            ],
          ),
        ),
        body: TabBarView(controller: _tabController, children: <Widget>[
          ListView(
            children: [
              UserFollowers(),
              SizedBox(height: 20.0),
              PostField(
                  posts: posts,
                  pageController: _pageController,
                  title: 'Posts'),
            ],
          ),
          Center(
            child: Text("It's rainy here"),
          ),
        ]),
      ),
    );
  }
}
