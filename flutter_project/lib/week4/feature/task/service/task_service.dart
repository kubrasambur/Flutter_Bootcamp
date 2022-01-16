import 'dart:io';

import 'package:dio/src/dio.dart';
import 'package:flutter_project/week4/feature/task/model/task_model.dart';
import 'package:flutter_project/week4/feature/task/service/ITaskService.dart';

part 'task_service_endpoint.dart';

class TaskService extends ITaskService {
  TaskService(Dio dio) : super(dio);

  @override
  Future<List<TaskModel>> fetchAllTask() async {
    final response = await dio.get(_TaskServiceEndpoints.DOGS.rawValue);
    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;

      if (data is List) {
        return data.map((e) => TaskModel.fromJson(e)).toList();
      }
    }
    return [];
  }
}
