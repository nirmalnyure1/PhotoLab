import 'package:flutter/material.dart';
import 'package:socialmediaui/widgets/userfollowers.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: Colors.red,
            onPressed: () {},
          ),
          centerTitle: true,
          title: Text(
            'PHOTO - LAB',
            style: TextStyle(
                fontSize: 24.0,
                color: Colors.red,
                fontWeight: FontWeight.w900,
                letterSpacing: 5),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: IconButton(
                icon: Icon(Icons.logout),
                color: Theme.of(context).primaryColor,
                onPressed: () {},
              ),
            ),
          ],
          bottom: TabBar(
            //physics: BouncingScrollPhysics(),
            indicatorColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.black,
            indicatorWeight: 2.0,
            labelColor: Theme.of(context).primaryColor,
            labelStyle: TextStyle(
                fontWeight: FontWeight.w500, letterSpacing: 2, fontSize: 14),
            controller: _tabController,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.photo,
                  size: 20,
                ),
                text: 'Trending',
              ),
              Tab(
                icon: Icon(
                  Icons.featured_play_list,
                  size: 20,
                ),
                text: 'Latest',
              ),
            ],
          ),
        ),

        body: TabBarView(controller: _tabController, children: <Widget>[
          ListView(
            children: [UserFollowers()],
          ),
          Center(
            child: Text("It's rainy here"),
          ),
        ]),

        // body: ListView(
        //   children: [
        //     UserFollowers(),
        //   ],
        // ),
      ),
    );
  }
}
