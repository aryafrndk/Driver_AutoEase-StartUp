import '../pages/TaskDetailPage.dart';
import 'package:flutter/material.dart';

class ReservationTaskPage extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {
      'name': 'Thomas Gunawan',
      'vehicle': 'Toyota Avanza - D 1234 ABC',
      'pickup_location': 'Telkom University',
      'workshop_location': 'Bengkel A, Jl. Workshop No. 5, Bandung',
    },
    {
      'name': 'Ridho Rahmat',
      'vehicle': 'Honda CR-V - D 5678 XYZ',
      'pickup_location': 'Pondok Fajar Cileunyi',
      'workshop_location': 'Bengkel B, Jl. Cileunyi No. 20, Bandung',
    },
    // Add more tasks as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservation Task'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          var task = tasks[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              title: Text(task['name']!),
              subtitle: Text('Vehicle: ${task['vehicle']}'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TaskDetailPage(
                      task: task,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
