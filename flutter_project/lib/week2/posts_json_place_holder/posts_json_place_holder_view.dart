import 'package:flutter/material.dart';
import 'package:flutter_project/week2/core/component/card/post_card.dart';
import 'package:flutter_project/week2/posts_json_place_holder/posts_json_place_holder_view_model.dart';

class PostJsonPlaceHolderView extends PostJsonPlaceHolderViewModel {
  final String title = "Json Place Holder";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: isLoading
          ? Center(child: LinearProgressIndicator())
          : buildListView(),
    );
  }

  ListView buildListView() {
    return ListView.builder(
        itemCount: postItems?.length,
        itemBuilder: (context, index) => PostCard(model: postItems?[index]));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline4,
      ),
    );
  }
}
