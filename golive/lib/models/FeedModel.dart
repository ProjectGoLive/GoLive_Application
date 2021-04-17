import 'package:flutter/cupertino.dart';

import 'PostModel.dart';

class Feed extends ChangeNotifier {
  late List<Post> _posts;
  List<Post> get posts => _posts;

  void getUpdatedPosts() {
    //send userid request to back end;
    //receive a list of posts through json
    //convert json to posts
    notifyListeners();
  }

  Post convertJSONtoPost(JSON) {
    //for json return post
  }
}
