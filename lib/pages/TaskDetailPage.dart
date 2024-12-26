import 'package:driver_autoease/pages/ConfirmDeliveryPage.dart';
import 'package:flutter/material.dart';

class TaskDetailPage extends StatelessWidget {
  final Map<String, String> task;

  TaskDetailPage({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Detail'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customer: ${task['name']}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Vehicle: ${task['vehicle']}'),
            SizedBox(height: 10),
            Text('Pickup Location: ${task['pickup_location']}'),
            SizedBox(height: 10),
            Text('Workshop Location: ${task['workshop_location']}'),
            SizedBox(height: 20),
            Text(
              'Instructions to Workshop:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Follow the road to the east and take the second left.'),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConfirmDeliveryPage(),
                  ),
                );
              },
              child: Text('Confirm Delivery'),
            ),
          ],
        ),
      ),
    );
  }
}
