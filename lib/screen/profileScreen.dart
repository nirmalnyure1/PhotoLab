import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialmediaui/data/data.dart';
import 'package:socialmediaui/models/postmodel.dart';
import 'package:socialmediaui/models/usermodel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socialmediaui/widgets/post.dart';
import 'package:socialmediaui/widgets/profileClipperDesign.dart';

class ProfileScreen extends StatefulWidget {
  User user;

  ProfileScreen({required this.user});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  late PageController _yourPostPageController = PageController();
  late PageController _yourFavoritesPageController = PageController();

  @override
  void initState() {
    _yourPostPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
    _yourFavoritesPageController =
        PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      key: _scaffoldKey,
      body: ListView(
        physics: BouncingScrollPhysics(),
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: ProfileClipperDesign(),
                child: Image(
                  image: AssetImage(widget.user.backgroundImageUrl),
                  width: double.infinity,
                  height: 240.0,
                  fit: BoxFit.cover,
                ),
              ),
              // Positioned(
              //     top: 30.0,
              //     left: 20.0,
              //     child: IconButton(
              //       icon: Icon(Icons.menu),
              //       color: Colors.white,
              //       iconSize: 30.0,
              //       onPressed: () {
              //         _scaffoldKey.currentState!.openDrawer();
              //         print('icon pressed');
              //       },
              //     ))

              Positioned(
                bottom: 0.0,
                left: MediaQuery.of(context).size.width / 2 - 50,
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.black45,
                      spreadRadius: 3,
                      offset: Offset(0, 1),
                    )
                  ], borderRadius: BorderRadius.circular(50.0)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image(
                      image: AssetImage(currentUser.profileImageUrl),
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Center(
            child: Text(currentUser.name,
                style: GoogleFonts.lato(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3)),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Text(
                    'Followings',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                        fontSize: 22),
                  ),
                  Text(
                    currentUser.following.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Theme.of(context).primaryColor),
                  )
                ],
              ),
              SizedBox(width: 25.0),
              Column(
                children: [
                  Text(
                    'Followers',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black54,
                        fontSize: 22),
                  ),
                  Text(
                    currentUser.followers.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Theme.of(context).primaryColor),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 20.0),
          PostField(
              pageController: _yourPostPageController,
              title: "Your Posts",
              posts: widget.user.posts),
          PostField(
              pageController: _yourFavoritesPageController,
              title: "Favorite",
              posts: widget.user.favorites)
        ],
      ),
    );
  }
}
