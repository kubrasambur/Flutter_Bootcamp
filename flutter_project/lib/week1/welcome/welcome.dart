import 'dart:math';

import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  final _appBarTitle = "Instagram";
  final _randomImage =
      "https://upload.wikimedia.org/wikipedia/commons/4/43/Mother_nature.jpg";

  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: listViewTop(context),
          ),
          Expanded(
            flex: 4,
            child: buildListView(),
          ),
          Expanded(flex: 3, child: dissmissibleBottomCard())
        ],
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      actions: [buildIconButtonFav(context)],
      centerTitle: false,
      title: buildRowAppbarTitle(context),
    );
  }

  IconButton buildIconButtonFav(BuildContext context) {
    return IconButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => Column(),
          );
        },
        icon: Icon(Icons.favorite));
  }

  Row buildRowAppbarTitle(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.wallpaper),
        buildTextAppbar(context),
      ],
    );
  }

  Text buildTextAppbar(BuildContext context) {
    return Text(
      _appBarTitle,
      style: Theme.of(context)
          .primaryTextTheme
          .headline4!
          .copyWith(color: Colors.grey[900]),
    );
  }

  ListView listViewTop(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height * 0.1,
          color: randomColor,
        ),
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height * 0.1,
          color: randomColor,
        ),
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height * 0.1,
          color: randomColor,
        ),
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height * 0.1,
          color: randomColor,
        ),
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height * 0.1,
          color: randomColor,
        ),
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height * 0.1,
          color: randomColor,
        ),
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height * 0.1,
          color: randomColor,
        ),
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height * 0.1,
          color: randomColor,
        ),
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height * 0.1,
          color: randomColor,
        ),
      ],
    );
  }

  ListView buildListView() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return buildlistViewCard(context, index);
      },
      itemCount: 100,
    );
  }

  SizedBox buildlistViewCard(BuildContext context, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Card(
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(_randomImage),
          ),
          onTap: () {},
          title: Text("$_appBarTitle $index"),
          trailing: Icon(Icons.arrow_right_alt),
        ),
      ),
    );
  }

  Dismissible dissmissibleBottomCard() {
    return Dismissible(
      key: UniqueKey(),
      background: Container(color: randomColor),
      secondaryBackground: Container(
        color: randomColor,
      ),
      child: Container(
        color: randomColor,
      ),
    );
  }
}
