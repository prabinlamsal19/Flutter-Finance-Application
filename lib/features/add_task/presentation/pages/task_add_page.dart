import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fast_forms/flutter_fast_forms.dart';

import '../../data/models/task_model.dart';
import '../task_bloc/task_bloc.dart';

class TaskAddPage extends StatefulWidget {
  TaskAddPage({super.key});
  // Function(String value) taskAdded;

  @override
  State<TaskAddPage> createState() => _TaskAddPageState();
}

class _TaskAddPageState extends State<TaskAddPage> {
  final formKey = GlobalKey<FormState>();

  var taskBubbleList = [];
  final controller = TextEditingController();
  String? hello;
  String? taskName;
  Difficulty difficultyValue = Difficulty.easy;

  String? timeValue;

  @override
  Widget build(BuildContext context) {
    return FastForm(formKey: formKey, children: [
      FastTextField(
        name: "TASKNAME",
        onSaved: (newValue) {
          setState(() {
            taskName = newValue;
          });
          //when saved, the new value of name will be added to the list.
        },
        labelText: 'Enter the task',
      ),
      const SizedBox(
        height: 20,
      ),
      FastChoiceChips(
        name: "name of chips",
        chips: [
          FastChoiceChip(value: "Easy"),
          FastChoiceChip(value: "Medium"),
          FastChoiceChip(value: "Hard")
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      FastTimePicker(
        name: "tasklength",
        helperText: "Task Length",
        onSaved: (newValue) {
          // print(newValue.toString());
          timeValue = newValue.toString();
        },
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            //running the onSaved parameter when submitted
            if (formKey.currentState!.validate()) {
              //handle the vallidation logic later
              formKey.currentState!.save();
              BlocProvider.of<TaskBloc>(context).add(TaskAddedEvent(
                  taskModel: TaskModel(
                      taskName: taskName ?? "",
                      difficulty: Difficulty.easy,
                      length: 10,
                      deadline: timeValue ?? "")));
              //creating a new task
              // setState(() {
              //               widget.taskAdded(taskName!);
              // });

              // taskAdded(taskName!);
              //show the submitted alert
              showDialog(
                  context: context,
                  builder: (context) {
                    Future.delayed(const Duration(seconds: 1), () {
                      Navigator.of(context).pop(true);
                    });
                    return const AlertDialog(
                      content: Text('The task was added'),
                    );
                  });
            }
          },
          child: const Text("Submit")),
      const SizedBox(
        height: 10,
      ),
    ]);
  }
}
