import 'package:golive/models/CommentModel.dart';

class Post {
  late int id;
  late String captions;
  late List<Media> contents;
  late String username;
  late int userId;
  Media profilePicture;
  late List<Comment> comments;
  late int likes;
}
