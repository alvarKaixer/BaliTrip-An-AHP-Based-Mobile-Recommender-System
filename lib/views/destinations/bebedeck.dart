import 'package:flutter/material.dart';

class BebedeckPage extends StatelessWidget {
  const BebedeckPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F3), // Light background color
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
                            'assets/bebedeck.jpg'), // Corrected image path
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
                          child: Icon(Icons.map, color: Colors.teal),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Bali Trip',
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

              // Bebedeck Information
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bebedeck',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Balaganan, Balingasag, Misamis Oriental',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(thickness: 1, color: Colors.grey),
                    const SizedBox(height: 16),
                    const Text(
                      'Activities & Itineraries',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Activities List with Fees
                    ListView(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.check_circle_outline,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text(
                            'Adult',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Text(
                            '₱50.00',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.check_circle_outline,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text(
                            'Kids',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Text(
                            '₱35.00',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.kitchen,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text(
                            'Outdoor Cooking & Grilling Area',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.egg,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text(
                            'Egg Swing',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.pool,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text(
                            'Outdoor Pool',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.home,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text(
                            'Villa\'s Rates',
                            style: TextStyle(fontSize: 16),
                          ),
                          trailing: Text(
                            '₱500 - ₱1300',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
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
