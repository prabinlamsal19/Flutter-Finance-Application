part of 'task_bloc.dart';

@immutable
abstract class TaskState {}

class TaskInitialState extends TaskState {}

class TaskAddedState extends TaskState {
  List<TaskModel> taskModelList;
  TaskAddedState({required this.taskModelList});
  //2 added taskmodel
}

class TaskRemovedState extends TaskState {}
