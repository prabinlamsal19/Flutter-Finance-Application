part of 'task_bloc.dart';

@immutable
abstract class TaskEvent {}

class TaskAddedEvent extends TaskEvent {
  TaskModel taskModel;
  TaskAddedEvent({required this.taskModel});
}

class TaskRemovedEvent extends TaskEvent {}
