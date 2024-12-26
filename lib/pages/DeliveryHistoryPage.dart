import 'package:flutter/material.dart';
import '../widgets/navigation_bar.dart';

class DeliveryHistoryPage extends StatefulWidget {
  @override
  _DeliveryHistoryPageState createState() => _DeliveryHistoryPageState();
}

class _DeliveryHistoryPageState extends State<DeliveryHistoryPage> {
  // List of completed tasks
  List<Map<String, String>> completedTasks = [
    {
      'taskName': 'Task 1: Toyota Avanza',
      'time': '2:30 PM',
      'distance': '15 km',
      'status': 'Completed',
    },
    {
      'taskName': 'Task 2: Honda CR-V',
      'time': '4:00 PM',
      'distance': '25 km',
      'status': 'Completed',
    },
    // Add more completed tasks as needed
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery History'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: completedTasks.length,
        itemBuilder: (context, index) {
          var task = completedTasks[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: ListTile(
              title: Text(task['taskName']!),
              subtitle: Text('Time: ${task['time']} | Distance: ${task['distance']}'),
              trailing: Text(task['status']!),
            ),
          );
        },
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update the selected index
          });
          // Handle navigation based on index if necessary
        },
      ),
    );
  }
}
