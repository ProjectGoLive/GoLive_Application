import 'package:flutter/material.dart';
import 'package:charcode/charcode.dart';

import '../constants.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      expandedHeight: 200,
      pinned: true,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
          background: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 75),
          Stack(
            children: [
              Text("20",
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 60,
                      fontFamily: 'Open Sans',
                      fontStyle: FontStyle.normal)),
              Positioned(
                bottom: -5,
                child: Text('DEGREES',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontFamily: 'Open Sans',
                        fontWeight: FontWeight.bold)),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text('497 Rosewood Road, Kentucky, Europe',
              style: TextStyle(color: kPrimaryColor, fontFamily: 'Open Sans')),
          Divider(
            color: kPrimaryColor,
            height: 20,
            thickness: 0.2,
            indent: 120,
            endIndent: 120,
          )
        ],
      )),
      leading: Container(
        padding: EdgeInsets.only(left: 10),
        child: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/currentUserProfile');
          },
          icon: Icon(
            Icons.person,
            color: Theme.of(context).primaryColor,
          ),
          iconSize: 30,
        ),
      ),
      title: Text('GoLive',
          style: TextStyle(
            fontSize: 25,
            color: Theme.of(context).primaryColor,
            fontFamily: 'Zen Dots',
          )),
      centerTitle: true,
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Theme.of(context).primaryColor,
                ),
                iconSize: 30,
              ),
            )
          ],
        )
      ],
    );
  }
}
