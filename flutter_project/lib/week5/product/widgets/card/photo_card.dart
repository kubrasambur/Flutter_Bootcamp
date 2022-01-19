import 'package:flutter/material.dart';
import 'package:flutter_project/week5/feature/photos/model/photos_model.dart';
import 'package:flutter_project/week5/product/manager/shop/shop_manager.dart';
import 'package:kartal/kartal.dart';
import 'package:provider/provider.dart';

class PhotoCard extends StatefulWidget {
  final PhotoModel model;

  const PhotoCard({Key? key, required this.model}) : super(key: key);

  @override
  State<PhotoCard> createState() => _PhotoCardState();
}

class _PhotoCardState extends State<PhotoCard>
    with AutomaticKeepAliveClientMixin {
  late PhotoModel model;
  @override
  void initState() {
    super.initState();
    model = widget.model;
  }

  bool isIncrementOpen = false;
  void incrementChange() {
    if (!isIncrementOpen) {
      context.read<ShopManager>().addShopItem(model);
    } else {
      context.read<ShopManager>().removeShopItem(model);
    }
    setState(() {
      isIncrementOpen = !isIncrementOpen;
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Card(
      child: Stack(
        children: [
          buildListTileCard(),
          Positioned(
            right: 0,
            child: buildShopCard(),
          ),
        ],
      ),
    );
  }

  ListTile buildListTileCard() {
    return ListTile(
      subtitle: Column(
        children: [
          Text(
            model.title ?? "",
            maxLines: 2,
          ),
          IconButton(
              onPressed: incrementChange, icon: Icon(Icons.shopping_basket))
        ],
      ),
      title: Image.network(model.thumbnailUrl ?? ""),
    );
  }

  Widget buildShopCard() {
    return AnimatedContainer(
      height: isIncrementOpen ? context.dynamicHeight(0.16) : 0,
      width: isIncrementOpen ? context.dynamicWidth(0.1) : 0,
      duration: context.durationLow,
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 4,
            child: buildIconButtonIncrement(),
          ),
          Expanded(flex: 1, child: Text(model.count.toString())),
          Expanded(
            flex: 4,
            child: buildIconButtonRemove(),
          )
        ],
      ),
    );
  }

  IconButton buildIconButtonRemove() {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        context.read<ShopManager>().deIncrementItem(model);
        model.count--;
      },
      icon: Icon(Icons.remove),
    );
  }

  IconButton buildIconButtonIncrement() {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        context.read<ShopManager>().incrementItem(model);
        model.count++;
      },
      icon: Icon(Icons.add),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
