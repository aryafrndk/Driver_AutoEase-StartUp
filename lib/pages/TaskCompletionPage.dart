import 'package:flutter/material.dart';

import 'dashboard_page.dart';

class TaskCompletePage extends StatelessWidget {
  final String taskName;
  final String time;
  final String distance;
  final String status;

  const TaskCompletePage({
    Key? key,
    required this.taskName,
    required this.time,
    required this.distance,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Completed'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Task: $taskName',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Time: $time'),
            Text('Distance: $distance'),
            Text('Status: $status'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => DashboardPage()),
            ); // Navigate back to previous page (Dashboard or Delivery History)
              },
              child: Text('Back to Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
