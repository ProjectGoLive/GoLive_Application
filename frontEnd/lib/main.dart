import 'package:flutter/material.dart';
import 'package:golive/constants.dart';
import 'package:golive/screens/FeedScreen.dart';
import 'package:golive/screens/UserScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FinalApp',
      initialRoute: '/',
      routes: {
        '/': (context) => MyFeedScreen(),
        '/currentUserProfile': (context) => MyUserProfile(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        accentColor: kSecondaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}
