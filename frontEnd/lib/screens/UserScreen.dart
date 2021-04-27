import 'package:flutter/material.dart';
import 'package:golive/constants.dart';
import 'package:golive/widgets/posts.dart';

class MyUserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          MyAppBar_UserScreen(),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return MyPost(
                id: index,
                primary: Colors.white,
                secondary: kPrimaryColor,
              );
            }, childCount: 20),
          )
        ],
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          decoration: BoxDecoration(
            color: kPrimaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 50, 0, 10),
                child: Text(
                  'Actions',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(height: 0.2, width: 500, color: Colors.white),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                  child: Text(
                    'Log Out',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ),
              ),
              Container(height: 0.2, width: 500, color: Colors.white),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                  child: Text(
                    'Change Password',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ),
              ),
              Container(height: 0.2, width: 500, color: Colors.white)
            ],
          )),
    );
  }
}

class MyAppBar_UserScreen extends StatelessWidget {
  void showBox(context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            backgroundColor: kPrimaryColor,
            children: [
              GestureDetector(
                child: Center(
                  child: Text(
                    'Change Profile Picture',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      collapsedHeight: 150,
      pinned: true,
      expandedHeight: 150,
      flexibleSpace: Stack(
        clipBehavior: Clip.none,
        children: [
          FlexibleSpaceBar(
            centerTitle: true,
            title: Column(
              children: [
                SizedBox(
                  height: 105,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Posts',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w700),
                              ),
                              Text('22',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontFamily: 'Open Sans')),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                color: Colors.white,
                                width: 30,
                                height: 0.2,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Locations',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontFamily: 'Open Sans',
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                '22',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontFamily: 'Open Sans'),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                color: Colors.white,
                                width: 30,
                                height: 0.2,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: -10,
            child: Center(
              child: GestureDetector(
                onTap: () {
                  showBox(context);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://images.pexels.com/photos/414171/pexels-photo-414171.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Positioned(
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.keyboard_arrow_right_sharp, size: 32),
                ),
              ),
            )
          ],
        )
      ],
      backgroundColor: kPrimaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
      title: Text('GoLive',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontFamily: 'Zen Dots',
          )),
      centerTitle: true,
    );
  }
}
