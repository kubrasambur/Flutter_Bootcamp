import 'package:flutter/material.dart';
import 'package:flutter_project/week5/feature/basket/basket_view.dart';
import 'package:flutter_project/week5/feature/photos/view/photos_view.dart';
import 'model/tab_model.dart';

class AppTabBar extends StatelessWidget {
  final List<TabModel> tabItems = [
    TabModel(icon: Icons.ac_unit, page: PhotosView(), title: "Photos"),
    TabModel(
        icon: Icons.accessibility_outlined,
        page: BasketView(),
        title: "Basket"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: buildTabBar(),
          ),
          body: buildTabBarView(),
        ));
  }

  TabBar buildTabBar() {
    return TabBar(
      tabs: List.generate(
          tabItems.length,
          (index) => Tab(
                text: tabItems[index].title,
                icon: Icon(tabItems[index].icon),
              )),
    );
  }

  TabBarView buildTabBarView() =>
      TabBarView(children: tabItems.map((e) => e.page).toList());
}
