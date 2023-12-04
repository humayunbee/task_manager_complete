import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/ProfileSummeryCard.dart';
import 'package:task_manager/ui/widgets/task_item_cart.dart';


class CompleteTaskScreen extends StatefulWidget {
  const CompleteTaskScreen({super.key});

  @override
  State<CompleteTaskScreen> createState() => _CompleteTaskScreenState();
}

class _CompleteTaskScreenState extends State<CompleteTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummeryCard(),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  // return TaskitemCard();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
