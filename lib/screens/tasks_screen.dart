import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_list.dart';
import 'package:todoey/models/task.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // slide up botton sheet
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskScreen(),
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(
                  top: 45.0, left: 30.0, right: 30.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(Icons.list,
                        size: 30.0, color: Colors.lightBlueAccent),
                    backgroundColor: Colors.white,
                    radius: 30.0,
                  ),
                  SizedBox(height: 10.0),
                  Text('Todoey',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 50.0,
                          fontWeight: FontWeight.w400)),
                  Text('${Provider.of<TaskData>(context).taskCount} tasks',
                      style: TextStyle(color: Colors.white, fontSize: 18.0))
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                ),
                child: TasksList(),
              ),
            )
          ]),
    );
  }
}


/*


  ! What's our app going to look like

 We take the design which we exported from sketch as reference in building UI of an App
 
 Finally,we transform into Widgets

Notice that we have a MaterialApp as top-most widget ,very usually we are going to build Scaffold which has backgroundColor,body (Column Widget),inside our column we have bunch of widgets as children
 
  - Icon widget
  - Text widget
  - Text widget
  
 *  One good option is to wrap column widget inside SafeArea which we normally use to stay safe from parts of our phone to can't really interact with it 
 
 Instead of using SafeArea,we can use Container widget,because in Container widget we also have padding property.

 ? Instead of giving uniform padding around all sides,instead we  can choose EdgeInsets.only() to have different amount of padding


Easiest way to generate Avatar icons,profile icons just wrap it inside CircleAvatar



As flutter is open-source if you ever wanna figure out how everything works,how to modify it that's the final encompassing way to do it

* By default all of the material-icons get blue color,anyway we can change it's properties 

* If we want to add space between widgets ,it's easy just by adding SizedBox if you're in a Column

? The only dimension that we are concerned about inside a column widget(vertical)

We can notice what's happening in the Layout

We can align the widgets to start or end using cross-axis alignment


If you look at carefully,we could se bottom-half surrounded by rounded corners. 

? It's almost like little to-do list card

We can create that by using Container,One of the properties that Container has it's decoration

? We could do whole bunch of things using BoxDecoration

There's issue if you specify color property to both container as well as Box-Decoration ,you can't have both you have only one of them

BorderRadius will turn square-box with rounded-corners

? finally, All we have to do  is to create a floatingActionButton


 



 






*/