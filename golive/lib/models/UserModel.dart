class activeUser {
  String name;
  String username;
  int userId;
  List<Post> postsByUser;
  Media profilePicture;
}
//IMPORTANT
//So, for getting the user id when we start up the app, what we can do is create a database local to the machine on which the app is running
//and then, store userId and special acknowledgement number in that database. Once this is done, we can initiate a call on app startup to that
//fixed location, and retrieve usedId and SAN, and then further send these as authentication to receive the feed. Cool.