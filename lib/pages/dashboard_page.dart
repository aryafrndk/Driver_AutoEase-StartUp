import '../widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import '../widgets/service_card.dart';
import 'ReservationTaskPage.dart';
import 'pickup_page.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Choose any Service\nyou need',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ServiceCard(
                icon: Icons.settings_input_composite,
                label: 'Pickup',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PickUpPage()),
                  );
                },
              ),
              const SizedBox(width: 20),
              ServiceCard(
                icon: Icons.calendar_today_outlined,
                label: 'Reservation',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReservationTaskPage()),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 40),
        ],
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
