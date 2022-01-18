import 'package:flutter/material.dart';

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
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            print(index);
            return Text("data");
          }),
    );
  }
}
