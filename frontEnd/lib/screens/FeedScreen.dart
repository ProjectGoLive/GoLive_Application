import 'package:flutter/material.dart';
import 'package:golive/constants.dart';
import 'package:golive/widgets/appBar.dart';
import 'package:golive/widgets/posts.dart';

class MyFeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          MyAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return MyPost(id: index);
            }, childCount: 20),
          )
        ],
      ),
    );
  }
}
