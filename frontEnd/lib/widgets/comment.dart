import 'package:flutter/material.dart';
import 'package:golive/constants.dart';

class MyComment extends StatelessWidget {
  MyComment(
      {this.primary = kPrimaryColor, this.secondary = Colors.white, Key? key})
      : super(key: key);
  Color primary;
  Color secondary;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: secondary),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [Icon(Icons.person, color: primary)],
              ),
            ),
            Row(
              children: [
                Text('@username',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, color: primary)),
                SizedBox(width: 10),
                Text('This is a comment!!', style: TextStyle(color: primary))
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Icon(Icons.star_border_outlined, color: primary)],
                ),
              ),
            ),
          ],
        ));
  }
}
