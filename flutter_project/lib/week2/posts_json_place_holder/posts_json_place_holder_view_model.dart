import 'package:flutter/material.dart';
import 'package:flutter_project/week2/posts_json_place_holder/service/json_place_holder_service.dart';
import "./posts_json_place_holder.dart";
import 'model/post_model.dart';

abstract class PostJsonPlaceHolderViewModel extends State<PostJsonPlaceHolder> {
  bool isLoading = false;
  final PlaceHolderService placeHolderService = PlaceHolderService();
  List<PostModel?>? postItems = [];

  Future<void> fetchAllDatas() async {
    final response = await placeHolderService.fetchPostItems();

    postItems = response;
    _changeLoading();
  }

  @override
  void initState() {
    super.initState();
    fetchAllDatas();
  }

  void _changeLoading() {
    setState(() {
      isLoading != isLoading;
    });
  }
}
