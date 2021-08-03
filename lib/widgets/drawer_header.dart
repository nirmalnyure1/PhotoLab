import 'package:flutter/material.dart';
import 'package:socialmediaui/data/data.dart';

class header extends StatelessWidget {
  const header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(currentUser.backgroundImageUrl),
          height: 210,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 0,
          right: 0,
          bottom: 0,
          left: 0,
          child: Container(
            color: Colors.black12,
            width: double.infinity,
            height: 2100,
          ),
        ),
        Positioned(
          bottom: 40.0,
          left: 40.0,
          //top: 40,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).primaryColor),
            height: 50.0,
            width: 250.0,
          ),
        ),
        Positioned(
          bottom: 10.0,
          left: 10.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(10.0),
                child: ClipOval(
                  child: Image(
                    width: 90,
                    height: 90,
                    image: AssetImage(currentUser.profileImageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(
                "Hey, ${currentUser.name}",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                    letterSpacing: 2),
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
