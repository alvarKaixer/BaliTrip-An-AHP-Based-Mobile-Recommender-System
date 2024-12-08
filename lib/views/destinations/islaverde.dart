import 'package:flutter/material.dart';

class IslaVerdePage extends StatelessWidget {
  const IslaVerdePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Light background color
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
                            'assets/islaverde.jpg'), // Path to Isla Verde image
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
                          child: Icon(Icons.beach_access,
                              color: Colors.teal), // Beach access icon
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

              // Isla Verde Information
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Isla Verde',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'A Relaxing Escape by the Sea',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16),
                    Divider(thickness: 1, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'Activities & Facilities',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),

                    // Activities
                    ListTile(
                      leading: Icon(Icons.self_improvement,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Unwind'),
                    ),
                    ListTile(
                      leading: Icon(Icons.spa,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Relax'),
                    ),
                    ListTile(
                      leading: Icon(Icons.pool,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Swimming'),
                    ),
                    ListTile(
                      leading: Icon(Icons.sports_esports,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Playing'),
                    ),
                    ListTile(
                      leading: Icon(Icons.people,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Bonding'),
                    ),
                    ListTile(
                      leading: Icon(Icons.sports_esports,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Fishing'),
                    ),

                    SizedBox(height: 16),

                    // Entrance Fee
                    Text(
                      'Entrance Fee',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    ListTile(
                      leading: Icon(Icons.local_offer,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Per Person'),
                      trailing: Text(
                        '₱10.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: 16),

                    // Cottages
                    Text(
                      'Cottages',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    ListTile(
                      leading: Icon(Icons.cottage,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Standard Cottage'),
                      trailing: Text(
                        '₱150.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
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
