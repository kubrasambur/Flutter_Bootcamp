import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;

abstract class _TaskViewModelBase with Store {
  BuildContext? context;
  @computed
  bool get isOdd => count.isOdd;

  void setContext(BuildContext? context) {
    this.context = context;
  }

  //count objesini widget ile dinleyeceğim bu yüzden observable anotasyonunu ekliyoruz
  @observable
  int count = 0;

  //yukarıdaki objeyi bu methotda değişeceğimiz için buna da action anotasyonunu ekliyoruz
  @action
  void onIncrementCount() {
    count += 1;
  }
}
