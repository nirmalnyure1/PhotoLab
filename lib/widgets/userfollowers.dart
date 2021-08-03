import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:socialmediaui/data/data.dart';
import 'package:socialmediaui/models/usermodel.dart';

class UserFollowers extends StatelessWidget {
  const UserFollowers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'Following',
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(left: 15.0),
            itemCount: users.length,
            itemBuilder: (BuildContext context, int index) {
              // Post post = posts[index];
              User user = users[index];

              return GestureDetector(
                onTap: () {
                  log('user is pressed');
                },
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Theme.of(context).primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: Offset(2, 1),
                          blurRadius: 6.0,
                          spreadRadius: 5,
                        ),
                      ]),
                  margin: EdgeInsets.all(10.0),
                  child: ClipOval(
                    child: Image(
                      width: 70,
                      height: 80,
                      image: AssetImage(user.profileImageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
