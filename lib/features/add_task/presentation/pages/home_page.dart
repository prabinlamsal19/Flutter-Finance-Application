import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../task_bloc/task_bloc.dart';
import '../widgets/task_bubble.dart';
import 'task_add_page.dart';

// ignore: must_be_immutable
@RoutePage()
class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.taskBubbleList});
  List taskBubbleList;
  // @override
  // void initState(){
  //   TaskAddPage(taskAdded: (addedTask){
  //       taskBubbleList.add(TaskBubble(bubbleText: addedTask));
  // });
  // }
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TaskBasket"),
      ),
      body: BlocBuilder<TaskBloc, TaskState>(
        builder: (context, state) {
          if (state is TaskAddedState) {
            final taskModelList = state.taskModelList;

            return ListView.builder(
              itemCount: taskModelList.length,
              itemBuilder: (context, index) {
                // List<TaskModel> taskList =
                // RepositoryProvider.of<TaskRepository>(context).getAllList;
                // TaskModel taskModel =
                //     RepositoryProvider.of<TaskRepository>(context).getModel; //2
                return TaskBubble(bubbleText: taskModelList[index].taskName);
              },
            );
          } else {
            return const Center(child: Text("Please add tasks"));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: ((BuildContext context) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        child: const Icon(Icons.keyboard_arrow_down),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("Add yourTaskBubble"),
                      const SizedBox(
                        height: 20,
                      ),
                      // BlocBuilder<TaskBloc, TaskState>(
                      // builder: (context, state) {
                      // if (state is TaskAddedState) {}
                      // return TaskAddPage(taskAdded: (addedTask) {
                      //   widget.taskBubbleList
                      //       .add(TaskBubble(bubbleText: addedTask));
                      // });
                      // },
                      // )
                      TaskAddPage()
                    ],
                  ),
                );
              }));
        },
        tooltip: 'Add task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
