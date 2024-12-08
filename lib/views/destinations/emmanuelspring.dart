import 'package:flutter/material.dart';

class EmmanuelSpringPage extends StatelessWidget {
  const EmmanuelSpringPage({super.key});

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
                            'assets/emmanuelspring.jpg'), // Corrected image path
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

              // Emmanuel Spring Information
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Emmanuel Spring',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Samay, Balingasag, Misamis Oriental',
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
                            Icons.child_care,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Kids'),
                          trailing: Text(
                            '₱30.00',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(
                            Icons.person,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Adult'),
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
                            Icons.accessible,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Senior/PWD'),
                          trailing: Text(
                            '₱40.00',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        // Cottages and accommodations
                        Divider(),
                        ListTile(
                          leading: Icon(
                            Icons.house,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Cottages (with outlet)'),
                          trailing: Text('₱500.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.house,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Cottages (with outlet)'),
                          trailing: Text('₱600.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.house,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Cottages (with outlet)'),
                          trailing: Text('₱800.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.house,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Cottages (with outlet)'),
                          trailing: Text('₱1000.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.grass,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Mushroom Cottage (no outlet)'),
                          trailing: Text('₱350.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.cabin,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Kubo (2pax)'),
                          trailing: Text('₱1000.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.cabin,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Kubo (4pax)'),
                          trailing: Text('₱2000.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.ac_unit,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text(
                              'Cottage w/ Aircon & Refrigerator (24hrs, 4pax)'),
                          trailing: Text('₱4000.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.ac_unit,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Cottage w/ Aircon (2pax)'),
                          trailing: Text('₱1500.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.ac_unit,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text('Cottage w/ Aircon (4pax)'),
                          trailing: Text('₱2500.00'),
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.people,
                            color: Color.fromRGBO(72, 111, 111, 1),
                          ),
                          title: Text(
                              'Kubo Barkadahan w/ Aircon & Ceiling Fan (20-34 pax)'),
                          trailing: Text('₱400 per head'),
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
