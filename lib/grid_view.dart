import 'package:flutter/material.dart';

class Gallery {
  Gallery({this.pictures, this.caption});
  ImageProvider pictures;
  String caption;
}

List<Gallery> galleryPosts = [
  Gallery(
    pictures: NetworkImage('https://picsum.photos/200'),
    caption: "Image number: ",
  ),
  Gallery(
    pictures: NetworkImage('https://picsum.photos/200'),
    caption: "Image number: ",
  ),
  Gallery(
    pictures: NetworkImage('https://picsum.photos/200'),
    caption: "Image number: ",
  ),
  Gallery(
    pictures: NetworkImage('https://picsum.photos/200'),
    caption: "Image number: ",
  ),
  Gallery(
    pictures: NetworkImage('https://picsum.photos/200'),
    caption: "Image number: ",
  ),
  Gallery(
    pictures: NetworkImage('https://picsum.photos/200'),
    caption: "Image number: ",
  ),
  Gallery(
    pictures: NetworkImage('https://picsum.photos/200'),
    caption: "Image number: ",
  ),
  Gallery(
    pictures: NetworkImage('https://picsum.photos/200'),
    caption: "Image number: ",
  ),
  Gallery(
    pictures: NetworkImage('https://picsum.photos/200'),
    caption: "Image number: ",
  ),
];

class GridViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Example'),
      ),
      // body: GalleryAppView(),
      // body: ButtonBarExample(),
      // body: ChipExample(),
      body: ExpandedExample(),
    );
  }
}

class ExpandedExample extends StatelessWidget {
  const ExpandedExample({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
                width: 200.0, color: Colors.amberAccent, child: Text('data 1')),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: 200.0,
              color: Colors.blueAccent,
              child: Text('data 2'),
            ),
          ),
        ],
      ),
    );
  }
}

class ChipExample extends StatelessWidget {
  const ChipExample({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Chip(
          backgroundColor: Colors.blue,
          labelStyle: Theme.of(context).textTheme.headline6,
          elevation: 20.0,
          label: Text("A Bot"),
          avatar: CircleAvatar(
            backgroundImage:
                NetworkImage('http://www.carminezacc.com/manstick.png'),
          ),
        ),
      ),
    );
  }
}

class ButtonBarExample extends StatelessWidget {
  const ButtonBarExample({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, i) {
          var n = 3231 - i - i * 23 * (i % 2) - 1;
          return Card(
            margin: EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'http://www.carminezacc.com/manstick.png'),
                      ),
                    ),
                    Text(
                      'A Bot',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      " @iamarealhuman$n",
                      style: Theme.of(context).textTheme.overline,
                    )
                  ],
                ),
                Padding(
                  child: Text(
                    "It might not be a human," +
                        "but it acts almost like it would if it were a human.",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
                ),
                ButtonBar(
                  layoutBehavior: ButtonBarLayoutBehavior.constrained,
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      child: Text('Follow'),
                      onPressed: () {
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Now you follow @iamrealhuman$n'),
                        ));
                      },
                    ),
                    FlatButton(
                      child: Text('Send Message'),
                      onPressed: () => Scaffold.of(context).showSnackBar(
                        SnackBar(
                            content: Text(
                                "You can't send message to @iamrealhuman$n")),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class GalleryAppView extends StatelessWidget {
  const GalleryAppView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        itemCount: galleryPosts.length,
        padding: EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 0.0,
          mainAxisSpacing: 0.0,
        ),
        itemBuilder: (context, i) => Card(
          elevation: 10.0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  // padding: EdgeInsets.all(12.0),
                  child: Image(
                    image: galleryPosts[i].pictures,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SliverGridCountExample extends StatelessWidget {
  const SliverGridCountExample({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(20.0),
        itemCount: 15,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 50.0,
          mainAxisSpacing: 100.0,
        ),
        itemBuilder: (context, i) => Text("${i + 1}"));
  }
}

class GridViewExampleExtent extends StatelessWidget {
  const GridViewExampleExtent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 50.0,
      crossAxisSpacing: 50.0,
      mainAxisSpacing: 100.0,
      padding: EdgeInsets.all(20.0),
      children: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]
          .map((e) => Text("$e", style: Theme.of(context).textTheme.headline3))
          .toList(),
    );
  }
}
