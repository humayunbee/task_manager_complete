import 'package:flutter/material.dart';
import 'package:task_manager/data/model/tasklistmodel.dart';
import 'package:task_manager/data/network_caller.dart';
import 'package:task_manager/data/network_response.dart';
import 'package:task_manager/ui/screens/add_new_task.dart';
import 'package:task_manager/ui/widgets/ProfileSummeryCard.dart';
import 'package:task_manager/ui/widgets/SummeryCart.dart';
import 'package:task_manager/ui/widgets/task_item_cart.dart';
import 'package:task_manager/utility/urls.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  bool getNewTaskInProgress = false;
  TaskListModel taskListModel = TaskListModel();


  Future<void> getNewTaskList() async {
    getNewTaskInProgress = true;
    if (mounted) {
      setState(() {});
    }
    final NetworkResponse response = await NetworkCaller().getRequest(Urls.getNewTasks);
    if(response.isSuccess){
       taskListModel = TaskListModel.fromJson(response.jsonResponse!);
    }
    getNewTaskInProgress = false;
    if (mounted) {
      setState(() {});
    }

  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNewTaskList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewTaskScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummeryCard(),
            const SingleChildScrollView(
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
              child: Visibility(
                visible: getNewTaskInProgress == false,
                replacement: const Center(child: CircularProgressIndicator()),
                child: ListView.builder(
                  itemCount: taskListModel.taskList?.length??0,
                  itemBuilder: (context, index) {
                    return TaskitemCard(
                      task: taskListModel.taskList![index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
