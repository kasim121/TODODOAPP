import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_todoapp/screen/add_task_screen.dart';
import 'package:flutter_todoapp/widgets/task_list.dart';
class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  /*Widget buildBottomSheet;*/// Widget buildBottomSheet(BuildContext contex) => Container();

  // {
  //    Container(
  //     child: Center(
  //       child: Text('This is bottum sheet'),
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: Colors.black,),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                    child:Container(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddTaskScreen(),
                    )
                )
            );
          },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(//Still not good looking insted of this i will use Container Widget becoz it has padding properties

            padding: EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.greenAccent,
                    child: Icon(Icons.list,size: 30,color: Colors.black,),
                  radius: 30,
                ),
                SizedBox(height:10.0),
                Text('TodoDo',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w700
                  ),

                ),
                Text(
                  'Task for the Day!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              //height: 600.0,//insted of giving Container height just wrap up with expanded widget
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  )
              ),
              child: TaskList(),
              // child: ListView(
              //   children: <Widget>[
              //     ListTile(
              //       title: Text('task one'),
              //       trailing: Checkbox(
              //           value: false,
              //
              //       ),
              //     ),
              //     ListTile(
              //       title: Text('task two'),
              //       trailing: Checkbox(
              //         value: false,
              //
              //       ),
              //     ),
              //   ],
              // ),

            ),
          )

        ],
      ),

    );
  }
}

