import 'package:flutter/material.dart';
import 'TaskCompletionPage.dart';

class ConfirmDeliveryPage extends StatefulWidget {
  @override
  _ConfirmDeliveryPageState createState() => _ConfirmDeliveryPageState();
}

class _ConfirmDeliveryPageState extends State<ConfirmDeliveryPage> {
  final TextEditingController _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Delivery'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please confirm that the vehicle has been delivered to the workshop.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _noteController,
              decoration: InputDecoration(
                labelText: 'Add any notes or issues (optional)',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logic to update the task status to "Completed"
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Task marked as "Completed"!')),
                );

                // Navigate to TaskCompletePage after confirming the delivery
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskCompletePage(
                      taskName: 'Toyota Avanza',
                      time: '2:30 PM',
                      distance: '15 km',
                      status: 'Completed',
                    ),
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
