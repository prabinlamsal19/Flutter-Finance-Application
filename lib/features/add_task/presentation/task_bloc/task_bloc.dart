import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/models/task_model.dart';

part 'task_event.dart';
part 'task_state.dart';


class TaskBloc extends Bloc<TaskEvent, TaskState> {
  List<TaskModel>taskModelList = [];
  // TaskBloc({required TaskRepository taskRepository})  //2
  TaskBloc()
      : super(TaskInitialState()) {
    on<TaskAddedEvent>((event, emit) {
      //TODO: use the list later.after questions are answered.
      // taskRepository.addTask(event.taskModel);

      // taskRepository.addModel(event.taskModel);  // 2
      taskModelList.add(event.taskModel);
      
      //render the task bubble
      //emit the task buble state with the taskmodel parameters

      emit(TaskAddedState(taskModelList: taskModelList));
      // taskAdded(event.taskName);
      // emit(TaskAddedState());
    });
    on<TaskRemovedEvent>((event, emit) {
      emit(TaskRemovedState());
    });
  }
}
