import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_project/week4/core/widgets/task_card.dart';
import '../viewmodel/task_view_model.dart';

final TaskViewModel _viewModel = TaskViewModel();

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }
    return Scaffold(
      appBar: AppBar(
        title: buildObserverTitle(),
      ),
      body: buildObserverBody(),
    );
  }

  Observer buildObserverBody() {
    return Observer(
      builder: (_) {
        return ListView.builder(
          itemCount: _viewModel.items.length,
          itemBuilder: (context, index) =>
              TaskCard(taskModel: _viewModel.items[index]),
        ).onLazyLoads(() async {
          // NEW REQUEST
        });
      },
    );
  }

  Observer buildObserverTitle() {
    //gelecek olan text bilgisini runtime da alıp yazdırmak için observer ile sardık

    return Observer(
      builder: (_) {
        return Visibility(
          visible: _viewModel.pageLife == LifeState.LOADING,
          child: Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}

extension ListViewExtension on ListView {
  Widget onLazyLoads(Future<void> Function() onPagingLoad,
      {Widget? itemLoadWidget}) {
    final delegate = childrenDelegate as SliverChildBuilderDelegate;
    final itemCount = delegate.childCount ?? 0;
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification notification) {
        if (notification.metrics.pixels ==
            notification.metrics.maxScrollExtent) {
          onPagingLoad();
        }
        return true;
      },
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          if (index == (itemCount - 1)) {
            itemLoadWidget ?? Center(child: CircularProgressIndicator());
          }
          return delegate.builder(context, index)!;
        },
      ),
    );
  }
}
