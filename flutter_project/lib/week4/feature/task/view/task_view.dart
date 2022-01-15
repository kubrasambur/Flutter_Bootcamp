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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _viewModel.onIncrementCount();
        },
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        //gelecek olan text bilgisini runtime da alıp yazdırmak için observer ile sardık
        title: Observer(builder: (_) {
          return Text("${_viewModel.count}");
        }),
      ),
    );
  }
}
