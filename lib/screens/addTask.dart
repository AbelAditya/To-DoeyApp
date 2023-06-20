import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Model/Task.dart';
import 'package:todoey/Model/task_data.dart';

class AddTask extends StatelessWidget {

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Add Task",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                keyboardType: TextInputType.text,
                controller: controller,
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: "Enter Task",
                ),
              ),
              SizedBox(height: 10.0,),
              TextButton(
                onPressed: (){
                  Provider.of<Task_Data>(context,listen: false).addingTask(Task(name: controller.text));
                  Navigator.pop(context);
                },
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.lightBlueAccent)),
                child: Text("Add Task",style: TextStyle(fontSize: 20.0,color: Colors.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
