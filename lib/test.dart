import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  final categories = [
    'Automotive',
    'Books',
    'Electronics',
    'Food',
  ];
  final products = [
    ['Car', 'Tyre', 'Fuel', 'Oil'],
    ['Programming', 'Novel', 'Politics', 'Business'],
    ['Desktop', 'Laptops', 'Keyboard'],
    ['Pasta', 'Pizza', 'Bread', 'Cheese', 'Chaat', 'Chips', 'Pani Puri']
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        elevation: 20.0,
        title: Text('List inside List'),
      ),
      // body: buildListView(),
      // body: buildListViewTwo()
      // body: Center(
      // child: buildContainerCircle(),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // child: buildExpansionTile(),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, i) => Dismissible(
            background: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.clear, color: Colors.white),
                  Icon(Icons.clear, color: Colors.white),
                ],
              ),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('images/flower.jpg'),
              ),
              title: Text("Example ${i + 1}"),
            ),
            key: UniqueKey(),
            onDismissed: (direction) {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("Tile #${i + 1} was dismissed"),
                  action: SnackBarAction(
                      label: "Do Something about this", onPressed: () {}),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  ExpansionTile buildExpansionTile() {
    return ExpansionTile(
      leading: Icon(Icons.list),
      title: Text('Title'),
      initiallyExpanded: false,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Left on first Row'),
            Text('Right on the first Row'),
          ],
        ),
        Text('Second Row'),
      ],
    );
  }

  Container buildContainerCircle() {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xff23453f),
        ),
        height: 50.0,
        width: 50.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.apps, color: Color(0xfffefefe), size: 26.0),
            // Text('Test',
            //     style: TextStyle(
            //       color: Color(0xfffffefefe),
            //     )),
          ],
        ));
  }

  ListView buildListViewTwo() {
    return ListView.separated(
      padding: EdgeInsets.only(top: 20.0),
      itemCount: 50,
      itemBuilder: (context, i) => Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0),
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 0.7,
                blurRadius: 5.0,
              )
            ],
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(
                color: Colors.yellowAccent,
                width: 2.0,
                style: BorderStyle.solid),
            gradient: LinearGradient(
              colors: [
                Colors.greenAccent,
                Colors.lime,
              ],
              begin: Alignment(0, 0),
              end: Alignment(2, 0),
              tileMode: TileMode.mirror,
            )),
        child: ListTile(
          leading: CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1508784411316-02b8cd4d3a3a?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjEyMDd9'),
          ),
          title: Text('User number' + ' ${i + 1}'),
          subtitle: Text('This is an example'),
          trailing: Icon(Icons.login),
        ),
      ),
      separatorBuilder: (context, i) => i % 1 == 0
          ? Divider()
          : Padding(
              padding: EdgeInsets.all(0.6),
            ),
    );
  }

  ListView buildListView() {
    return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, i) => Column(
              children: [
                Text(
                  categories[i],
                  style: Theme.of(context).textTheme.headline3,
                ),
                Container(
                  height: 150.0,
                  child: ListView.builder(
                    padding: EdgeInsets.all(10.0),
                    scrollDirection: Axis.horizontal,
                    itemCount: products[i].length,
                    itemBuilder: (BuildContext context, int j) {
                      return Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Card(
                          color: Colors.amberAccent,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              products[i][j],
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ));
  }
}

class TwoTexts extends StatelessWidget {
  TwoTexts({this.firstText, this.secondText});
  final String firstText, secondText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(firstText), Text(secondText)],
    );
  }
}
