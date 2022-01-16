import 'package:flutter/widgets.dart';
import '../../../core/network/network_manager.dart';
import '../service/ITaskService.dart';
import '../service/task_service.dart';
import 'package:mobx/mobx.dart';
import '../model/task_model.dart';
part 'task_view_model.g.dart';

class TaskViewModel = _TaskViewModelBase with _$TaskViewModel;

abstract class _TaskViewModelBase with Store {
  BuildContext? context;

  late ITaskService taskService;

  //items objesini widget ile dinleyeceğim bu yüzden observable anotasyonunu ekliyoruz
  @observable
  List<TaskModel> items = [];

  LifeState pageLife = LifeState.IDLE;

  _TaskViewModelBase({this.context}) {
    taskService = TaskService(NetworkManager.instance.dio);
  }

  void setContext(BuildContext? context) {
    this.context = context;
    fetchItems();
  }

  //items objesini bu methotda değişeceğimiz için buna da action anotasyonunu ekliyoruz
  @action
  Future<void> fetchItems() async {
    pageLife = LifeState.LOADING;
    items = (await taskService.fetchAllTask())!;
    pageLife = LifeState.DONE;
  }
}

enum LifeState { IDLE, LOADING, DONE }
