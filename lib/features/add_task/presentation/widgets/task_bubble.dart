import 'package:flutter/material.dart';

class TaskBubble extends StatelessWidget {
  final String bubbleText;
  const TaskBubble({super.key, required this.bubbleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Center(
        child: Stack(children: <Widget>[
          Container(
            constraints: const BoxConstraints(
              maxHeight: 50,
              maxWidth: 100,
            ),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text(bubbleText)),
          ),
         InkWell(
         onTap: (){ 
          print(bubbleText);
         },
           child: const Icon(Icons.cancel_sharp, 
           color: Colors.red,
           fill: 0.9,
           ),
         )]),
      ),
    );
  }
}
