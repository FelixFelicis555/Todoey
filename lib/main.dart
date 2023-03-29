import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/tasks_screen.dart';
import 'package:todoey/models/task_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}


/*

 * We gonna be building a To-do list app called Todoey 

 ? It's going to help us in task management and in the process while building this app,we learn about State-Management in Flutter

  ! What We'll Make :-

    * It allows us to add new tasks,delete tasks,checking off tasks from to-do list
    * We also look at various ways of managing the states and explore what state it is & how we use it
    * Organize the architecture of the app

    ? How we can manage states in more complex apps -

    Through the use of callbacks,we lift the state up

    Google Flutter provides Provider package for State-Management


  ! What is State,why do we need to manage it & exactly how do we do it ?



   * Designing the To-Do List App

*/