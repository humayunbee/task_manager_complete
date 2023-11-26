import 'package:flutter/material.dart';

class TaskitemCard extends StatelessWidget {
  const TaskitemCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Title Will be Hre',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Text('Description'),
            Text('Date: 01-12-1997'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Text(
                    'new',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.blue,
                ),
                Wrap(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_forever_outlined)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
