// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RRGFoodCornerPage extends StatelessWidget {
  const RRGFoodCornerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9), // Soft background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with Picture and Close Button
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/rrgfoodcorner.jpg'), // Path to RRG Food Corner image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.white,
                          child: Icon(Icons.restaurant, color: Colors.teal),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'BaliTrip',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white.withOpacity(0.9),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 16,
                    right: 16,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // RRG Food Corner Information
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'RRG Food Corner',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E4F4F),
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Brgy. 5, Balingasag, Misamis Oriental',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16),
                    Divider(thickness: 1, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'Menu & Specialties',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E4F4F),
                      ),
                    ),
                    SizedBox(height: 16),

                    // Menu List with Prices
                    MenuItem(
                        title: 'Chicken + Rice + Soft drink', price: '₱70.00'),
                    MenuItem(
                        title: 'Lumpiang Shanghai + Rice + Soft drink',
                        price: '₱65.00'),
                    MenuItem(
                        title: 'Hotdog + Egg + Rice + Soft drink',
                        price: '₱70.00'),
                    MenuItem(
                        title: 'Pork chop + Rice + Soft drink',
                        price: '₱99.00'),
                    MenuItem(
                        title: 'Burger Steak + Rice + Soft drink',
                        price: '₱60.00'),
                    MenuItem(
                        title: 'Ham + Egg + Rice + Soft drink',
                        price: '₱65.00'),
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

class MenuItem extends StatelessWidget {
  final String title;
  final String price;

  const MenuItem({
    super.key,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: const Icon(
          Icons.check_circle_outline,
          color: Color.fromRGBO(72, 111, 111, 1),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        trailing: Text(
          price,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
