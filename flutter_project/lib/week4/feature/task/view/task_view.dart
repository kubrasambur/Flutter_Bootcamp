import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../viewmodel/task_view_model.dart';

class TaskView extends StatelessWidget {
  final TaskViewModel _viewModel = TaskViewModel();

  @override
  Widget build(BuildContext context) {
    if (_viewModel.context == null) {
      _viewModel.setContext(context);
    }
    return Scaffold(
      /*
      appBar: AppBar(
        //gelecek olan text bilgisini runtime da alıp yazdırmak için observer ile sardık
        title: Observer(
          builder: (_) {
            return Text("${_viewModel.count}");
          },
        ),
      ),
      */
      appBar: AppBar(
        title: Observer(
          builder: (_) {
            return Visibility(
              child: Center(child: CircularProgressIndicator()),
              visible: _viewModel.pageLife == LifeState.LOADING,
            );
          },
        ),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
            itemCount: _viewModel.items.length,
            itemBuilder: (context, index) => Card(
                  child: Text(
                    _viewModel.items[index].description ?? "",
                  ),
                ));
      }),
    );
  }
}
