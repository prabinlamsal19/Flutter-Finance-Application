import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/models/task_model.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  List<TaskModel> taskModelList = [];
  TaskBloc() : super(TaskInitialState()) {
    on<TaskAddedEvent>((event, emit) {
      taskModelList.add(event.taskModel);
      emit(TaskAddedState(taskModelList: taskModelList));
    });
    on<TaskRemovedEvent>((event, emit) {
      emit(TaskRemovedState());
    });
  }
}
