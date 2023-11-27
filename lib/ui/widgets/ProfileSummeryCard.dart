import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/edit_profile_screen.dart';

class ProfileSummeryCard extends StatelessWidget {
  const ProfileSummeryCard({
    super.key, this.enableOnTap=true,
  });
final bool enableOnTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){

        Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditProfileScreen()),);
      },
      tileColor: Colors.green,
      leading: CircleAvatar(),
      title: Text(
        'Rabbil Hasan',
        style:
        TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
      subtitle: Text(
        'Rabill@gmail.com',
        style: TextStyle(color: Colors.white),
      ),
      trailing: enableOnTap? Icon(Icons.arrow_forward): null,
    );
  }
}
