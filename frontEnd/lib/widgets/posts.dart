import 'package:flutter/material.dart';

import '../constants.dart';
import 'comment.dart';

class MyPost extends StatelessWidget {
  MyPost(
      {required this.id,
      this.primary = kPrimaryColor,
      this.secondary = Colors.white,
      Key? key})
      : super(key: key);
  final int id;
  final Color primary;
  final Color secondary;

  void showBottomSheet(context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50))),
        backgroundColor: primary,
        context: context,
        builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Comments',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: secondary,
                      fontFamily: 'Open Sans',
                      fontSize: 30),
                ),
              ),
              Container(height: 0.5, width: 500, color: secondary),
              Expanded(
                child: SizedBox(
                  width: 400,
                  child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return MyComment(
                        primary: primary,
                        secondary: secondary,
                      );
                    },
                  ),
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /// Header for a post
        Container(
            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: secondary,
            ),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            icon: Icon(Icons.person, color: primary, size: 30),
                            onPressed: null),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Random Tiwari',
                              style: TextStyle(
                                  color: primary, fontWeight: FontWeight.bold)),
                          Text(
                            '@username',
                            style: TextStyle(
                                color: primary,
                                fontFamily: 'Open Sans',
                                fontSize: 12),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )),

        /// Pictures widget///
        Container(
          margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.transparent),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: NetworkImage(
                  'https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
            ),
          ),
        ),

        /// Like, comments widget.
        Container(
            margin: EdgeInsets.fromLTRB(10, 5, 10, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: secondary,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Icon(Icons.star_border_outlined,
                            color: primary, size: 27.5),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1),
                        child: Text(
                          '32',
                          style: TextStyle(color: primary, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: GestureDetector(
                        child: Icon(Icons.mode_comment_outlined,
                            color: primary, size: 25),
                      ),
                    ),
                    Text(
                      '32',
                      style: TextStyle(color: primary, fontSize: 12),
                    )
                  ],
                ),
              ],
            )),
        //Comments Box
        GestureDetector(
          onTap: () {
            showBottomSheet(context);
          },
          child: Container(
              margin: EdgeInsets.fromLTRB(10, 2.5, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: secondary,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
                        child: Text(
                          'Comments',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: primary,
                              fontFamily: 'Open Sans',
                              fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  Container(
                    color: primary,
                    height: 1,
                    width: 1000,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 6, 5, 2),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text('@username',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: primary)),
                            SizedBox(
                              width: 10,
                            ),
                            Text('My name is a comment!!',
                                style: TextStyle(color: primary, fontSize: 13)),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                child: Icon(Icons.star_border_outlined,
                                    color: primary, size: 20),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 6, 5, 2),
                    child: Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text('@username',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: primary)),
                            SizedBox(
                              width: 10,
                            ),
                            Text('My name is a comment!!',
                                style: TextStyle(color: primary, fontSize: 13)),
                          ],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                child: Icon(Icons.star_border_outlined,
                                    color: primary, size: 20),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10)
                ],
              )),
        ),
      ],
    );
  }
}
