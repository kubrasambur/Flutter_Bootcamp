// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) => TaskModel()
  ..code = json['code'] as int?
  ..description = json['description'] as String?
  ..imageUrl = json['imageUrl'] as String?;

Map<String, dynamic> _$TaskModelToJson(TaskModel instance) => <String, dynamic>{
      'code': instance.code,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
    };
