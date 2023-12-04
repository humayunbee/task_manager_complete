import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/ProfileSummeryCard.dart';
import 'package:task_manager/ui/widgets/task_item_cart.dart';


class CancleTaskScreen extends StatefulWidget {
  const CancleTaskScreen({super.key});

  @override
  State<CancleTaskScreen> createState() => _CancleTaskScreenState();
}

class _CancleTaskScreenState extends State<CancleTaskScreen> {
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
