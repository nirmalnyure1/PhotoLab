import 'package:flutter/material.dart';
import 'package:socialmediaui/models/postmodel.dart';

class PostField extends StatelessWidget {
  var posts;
  var title;
  var pageController;

  PostField({this.posts, this.title, this.pageController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: TextStyle(
                color: Colors.black,
                fontSize: 23.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.all(15.0),
          height: 400,
          width: double.infinity,
          child: PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: pageController,
            itemCount: posts.length,
            itemBuilder: (context, int index) {
              Post post = posts[index];
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              offset: Offset(2, 1),
                              blurRadius: 6.0,
                              spreadRadius: 8,
                            ),
                          ]),
                   
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          height: 400,
                          width: 300,
                          image: AssetImage(post.imageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
