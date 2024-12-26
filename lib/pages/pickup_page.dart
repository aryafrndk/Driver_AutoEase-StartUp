import 'package:flutter/material.dart';
import '../pages/PickupDetailPage.dart';
import '../widgets/customer_card.dart';
import '../widgets/navigation_bar.dart';

class PickUpPage extends StatefulWidget {
  @override
  _PickUpPageState createState() => _PickUpPageState();
}

class _PickUpPageState extends State<PickUpPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Pickup Customer',
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
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          CustomerCard(
            name: 'Thomas Gunawan',
            service: 'Pick up Now',
            address:
                'Telkom University Land Mark Tower\nJl. Telekomunikasi No. 1, Bandung, Jawa Barat',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PickupDetailPage(
                    name: 'Thomas Gunawan',
                    location: 'Telkom University Land Mark Tower',
                    vehicle: 'Toyota Avanza - D 1234 ABC',
                  ),
                ),
              );
            },
          ),
          CustomerCard(
            name: 'Ridho Rahmat',
            service: 'Pick up Now',
            address:
                'Pondok Fajar Cileunyi\nJl. Sukabirus No. 52, Cileunyi, Bandung, Jawa Barat',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PickupDetailPage(
                    name: 'Ridho Rahmat',
                    location: 'Pondok Fajar Cileunyi',
                    vehicle: 'Honda CR-V - D 5678 XYZ',
                  ),
                ),
              );
            },
          ),
          CustomerCard(
            name: 'Ali Hartanto',
            service: 'Pick up Now',
            address:
                'McDonald\'s Paskal\nJl. Pasir Kaliki, Bandung, Jawa Barat',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PickupDetailPage(
                    name: 'Ali Hartanto',
                    location: 'McDonald\'s Paskal',
                    vehicle: 'Suzuki Ertiga - D 9101 LMN',
                  ),
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
