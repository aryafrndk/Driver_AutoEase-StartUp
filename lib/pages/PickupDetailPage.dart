import 'package:flutter/material.dart';

class PickupDetailPage extends StatefulWidget {
  final String name;
  final String location;
  final String vehicle;

  const PickupDetailPage({
    Key? key,
    required this.name,
    required this.location,
    required this.vehicle,
  }) : super(key: key);

  @override
  _PickupDetailPageState createState() => _PickupDetailPageState();
}

class _PickupDetailPageState extends State<PickupDetailPage> {
  String status = "Tugas Diterima";

  void _confirmPickup() {
    setState(() {
      status = "Sedang diantar ke bengkel";
    });
  }

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
          'Detail Pickup',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Pelanggan: ${widget.name}",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              "Lokasi: ${widget.location}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
            Text(
              "Detail Kendaraan: ${widget.vehicle}",
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Text(
              "Status: $status",
              style: TextStyle(
                fontSize: 16,
                color: status == "Sedang diantar ke bengkel"
                    ? Colors.green
                    : Colors.orange,
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: _confirmPickup,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text(
                "Konfirmasi Penjemputan",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
