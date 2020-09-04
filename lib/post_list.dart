import 'package:flutter/material.dart';

class Post {
  Post({this.profileName, this.profilePicture, this.postText});

  ImageProvider profilePicture;
  String profileName;
  String postText;
}

List<Post> posts = [
  Post(
    profilePicture: NetworkImage(
        'https://images.pexels.com/photos/432059/pexels-photo-432059.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
    profileName: 'Shishir Kumar',
    postText: "Get busy living or get busy dying.",
  ),
  Post(
    profilePicture: NetworkImage(
        'https://images.pexels.com/photos/1960183/pexels-photo-1960183.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
    profileName: 'Manju',
    postText:
        "Many of life’s failures are people who did not realize how close they were to success when they gave up",
  ),
  Post(
    profilePicture: NetworkImage(
        'https://images.pexels.com/photos/1265718/pexels-photo-1265718.jpeg?auto=compress&cs=tinysrgb&h=650&w=940'),
    profileName: 'Adam Hans',
    postText:
        "Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma – which is living with the results of other people’s thinking.",
  ),
];

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post List'),
        elevation: 20.0,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, i) => Card(
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: posts[i].profilePicture,
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        posts[i].profileName,
                        style: Theme.of(context).textTheme.headline4,
                      )),
                ],
              ),
              Divider(),
              Align(
                alignment: FractionalOffset.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(posts[i].postText,
                      style: Theme.of(context).textTheme.subtitle1),
                ),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                    elevation: 2.0,
                    child: FlatButton.icon(
                      icon: Icon(
                        Icons.thumb_up,
                        color: Colors.lightBlueAccent,
                      ),
                      label: Text('Like'),
                      onPressed: () {},
                    ),
                  ),
                  Card(
                    elevation: 2.0,
                    child: FlatButton.icon(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment,
                        color: Colors.amberAccent,
                      ),
                      label: Text('Comment'),
                    ),
                  ),
                  Card(
                    elevation: 2.0,
                    child: FlatButton.icon(
                      icon: Icon(
                        Icons.share,
                        color: Colors.greenAccent,
                      ),
                      label: Text('Share'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
