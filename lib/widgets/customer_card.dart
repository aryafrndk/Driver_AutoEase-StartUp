import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  final String name;
  final String service;
  final String address;
  final VoidCallback onTap; // Menggunakan VoidCallback untuk onTap

  const CustomerCard({
    Key? key,
    required this.name,
    required this.service,
    required this.address,
    required this.onTap, // Menambahkan onTap pada constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector( // Membungkus dengan GestureDetector untuk menangani tap
      onTap: onTap, // Menangani aksi tap
      child: Card(
        margin: const EdgeInsets.only(bottom: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundColor: Colors.grey[300],
                child: Icon(
                  Icons.person,
                  size: 40,
                  color: Colors.black,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      service,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      address,
                      style: const TextStyle(fontSize: 12, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
