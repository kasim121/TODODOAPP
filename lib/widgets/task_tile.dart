import 'package:flutter/material.dart';
class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked  = false;
  /*void checkBoxCallBack(checkBoxState){
    setState(() {
      isChecked = checkBoxState;
    });
  }*/
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'This is Task',
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough: null),
      ),
      trailing: TaskCheckBox(
         checkBoxState: isChecked,
         /*toggleCheckBoxState: checkBoxCallBack,),*/
      toggleCheckBoxState: (checkBoxState){
          setState(() {
            isChecked = checkBoxState;
          });
        }
      ),
    );
  }
}
class TaskCheckBox extends StatelessWidget {
  final bool checkBoxState;
  final Function toggleCheckBoxState;
  TaskCheckBox({this.checkBoxState,this.toggleCheckBoxState});
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.redAccent,
      value: checkBoxState,
      onChanged: toggleCheckBoxState,
    );
  }
}












//Using Local means SetState to know more about Global State check above code
// class TaskTile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text('This is a task'),
//       trailing: TaskCheckBox(),
//     );
//   }
// }
// class TaskCheckBox extends StatefulWidget {
//   @override
//   _TaskCheckBoxState createState() => _TaskCheckBoxState();
// }
//
// class _TaskCheckBoxState extends State<TaskCheckBox> {
//   bool isChecked = false;
//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//         activeColor: Colors.redAccent,
//         value: isChecked,
//         onChanged: (newValue){
//           setState(() {
//             isChecked = newValue;
//           });
//
//         },
//     );
//   }
// }
//






