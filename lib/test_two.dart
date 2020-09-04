import 'package:flutter/material.dart';

class TestTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 6.0,
            backgroundImage: AssetImage('images/flower.jpg'),
          ),
        ),
        title: Text('Horizontal Layout'),
      ),
      // body: ProfileLayout(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 10.0,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 10.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('images/flower.jpg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Short Poster',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: FractionalOffset.centerLeft,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "This is a short post, but that doesn't really matter",
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 10.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.thumb_up,
                          color: Colors.blueAccent,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Card(
                      elevation: 10.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.comment,
                          color: Colors.redAccent,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Card(
                      elevation: 10.0,
                      child: IconButton(
                        icon: Icon(
                          Icons.share,
                          color: Colors.greenAccent,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row profilePicandName(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 40.0,
          backgroundImage: AssetImage('images/flower.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Shishir Kumar',
            style: Theme.of(context).textTheme.headline3,
          ),
        )
      ],
    );
  }

  // Build Layout using rows and columns
  Row buildRowColLay(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Image(
              image: AssetImage('images/flower.jpg'),
              width: 100.0,
            ),
            Text(
              'Flower',
              style: Theme.of(context).textTheme.headline6,
            ),
            Image(
              image: AssetImage('images/flower.jpg'),
              width: 100.0,
            ),
            Text(
              'Flower',
              style: Theme.of(context).textTheme.headline6,
            )
          ],
        ),
        Column(
          children: [
            Image(
              image: AssetImage('images/flower.jpg'),
              width: 100.0,
            ),
            Text(
              'Flower',
              style: Theme.of(context).textTheme.headline6,
            )
          ],
        ),
        Column(
          children: [
            Image(
              image: AssetImage('images/flower.jpg'),
              width: 100.0,
            ),
            Text(
              'Flower',
              style: Theme.of(context).textTheme.headline6,
            )
          ],
        )
      ],
    );
  }
}

class ProfileLayout extends StatelessWidget {
  const ProfileLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      // child: buildRowColLay(context),
      // child: profilePicandName(context)),
      child: Card(
        elevation: 20.0,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 10.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage('images/flower.jpg'),
                      ),
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Shishir Kumar',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text('Full Stack Developer',
                    style: Theme.of(context).textTheme.subtitle1),
              ),
              Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Card(
                  elevation: 10.0,
                  child: IconButton(
                    color: Colors.red,
                    iconSize: 30.0,
                    icon: Icon(Icons.where_to_vote_outlined),
                    onPressed: () {},
                  ),
                ),
                Card(
                  elevation: 10.0,
                  child: IconButton(
                    color: Colors.green,
                    iconSize: 30.0,
                    icon: Icon(Icons.youtube_searched_for),
                    onPressed: () {},
                  ),
                ),
                Card(
                  elevation: 10.0,
                  child: IconButton(
                    color: Colors.blue,
                    iconSize: 30.0,
                    icon: Icon(Icons.wallpaper),
                    onPressed: () {},
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
