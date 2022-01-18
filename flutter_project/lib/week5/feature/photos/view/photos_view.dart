import 'package:flutter/material.dart';
import 'package:flutter_project/week5/feature/photos/viewmodel/photos_view_model.dart';

final _viewModel = PhotosViewModel();

class PhotosView extends StatelessWidget {
  const PhotosView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ActionChip(
            label: Text("\$10"),
            onPressed: () {},
            avatar: Icon(Icons.shopping_bag),
          )
        ],
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.8),
          itemCount: _viewModel.photos.length,
          itemBuilder: (context, index) {
            print(index);
            return buildCardPhoto(index);
          }),
    );
  }

  Card buildCardPhoto(int index) {
    return Card(
        child: ListTile(
      subtitle: Text(_viewModel.photos[index].title ?? ""),
      title: Image.network(_viewModel.photos[index].thumbnailUrl ?? ""),
    ));
  }
}
