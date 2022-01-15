// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskViewModel on _TaskViewModelBase, Store {
  Computed<bool>? _$isOddComputed;

  @override
  bool get isOdd => (_$isOddComputed ??=
          Computed<bool>(() => super.isOdd, name: '_TaskViewModelBase.isOdd'))
      .value;

  final _$countAtom = Atom(name: '_TaskViewModelBase.count');

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  final _$_TaskViewModelBaseActionController =
      ActionController(name: '_TaskViewModelBase');

  @override
  void onIncrementCount() {
    final _$actionInfo = _$_TaskViewModelBaseActionController.startAction(
        name: '_TaskViewModelBase.onIncrementCount');
    try {
      return super.onIncrementCount();
    } finally {
      _$_TaskViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
count: ${count},
isOdd: ${isOdd}
    ''';
  }
}
