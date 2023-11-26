import 'package:flutter/material.dart';
import 'package:task_manager/ui/widgets/ProfileSummeryCard.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ProfileSummeryCard(
              enableOnTap:false,
            ),
            Expanded(child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [

                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
