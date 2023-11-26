import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/add_new_task.dart';
import 'package:task_manager/ui/widgets/ProfileSummeryCard.dart';
import 'package:task_manager/ui/widgets/SummeryCart.dart';
import 'package:task_manager/ui/widgets/task_item_cart.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});
  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddNewTaskScreen(),),);
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummeryCard(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16),
                child: Row(
                  children: [
                    SummeryCart(
                      count: '92',
                      title: 'New',
                    ),
                    SummeryCart(
                      count: '92',
                      title: 'In Progress',
                    ),
                    SummeryCart(
                      count: '92',
                      title: 'Complete',
                    ),
                    SummeryCart(
                      count: '92',
                      title: 'Cancle',
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return TaskitemCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
