import 'package:flutter/material.dart';

class EscanillaPage extends StatelessWidget {
  const EscanillaPage({super.key});

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
                            'assets/escanilla.jpg'), // Corrected image path
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

              // Escanilla Information
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Escanilla',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Cala-Cala, Balingasag, Misamis Oriental',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16),
                    Divider(thickness: 1, color: Colors.grey),
                    SizedBox(height: 16),
                    Text(
                      'Facilities & Pricing',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),

                    // Rooms
                    ListTile(
                      leading: Icon(Icons.hotel,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text(
                          'Fully Airconditioned (15 pax, 4 rooms available)'),
                      trailing: Text('₱6,000'),
                    ),
                    ListTile(
                      leading: Icon(Icons.hotel,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Airconditioned (9 pax, 1 room available)'),
                      trailing: Text('₱4,500'),
                    ),
                    ListTile(
                      leading: Icon(Icons.hotel,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Airconditioned (6 pax, 2 rooms available)'),
                      trailing: Text('₱3,500'),
                    ),
                    ListTile(
                      leading: Icon(Icons.hotel,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title:
                          Text('Airconditioned (2-3 pax, 3 rooms available)'),
                      trailing: Text('₱2,500'),
                    ),
                    ListTile(
                      leading: Icon(Icons.hotel,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Non-Airconditioned Beach Room (6 pax)'),
                      trailing: Text('₱1,500'),
                    ),
                    ListTile(
                      leading: Icon(Icons.hotel,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Non-Airconditioned Beach Room (4 pax)'),
                      trailing: Text('₱1,000'),
                    ),

                    // Function Halls
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.meeting_room,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text(
                          'Function Hall (50-80 pax, Fully Airconditioned)'),
                      trailing: Text('₱10,000'),
                    ),
                    ListTile(
                      leading: Icon(Icons.meeting_room,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Open Function Hall (50-80 pax)'),
                      trailing: Text('₱5,000'),
                    ),
                    ListTile(
                      leading: Icon(Icons.meeting_room,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text(
                          'Beachside Function Hall (50-80 pax, Non-Aircon)'),
                      trailing: Text('₱5,000'),
                    ),

                    // Pool & Beach Entrance
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.pool,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Pool Entrance (Adult - Day Use)'),
                      trailing: Text('₱50'),
                    ),
                    ListTile(
                      leading: Icon(Icons.pool,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Pool Entrance (Adult - Overnight)'),
                      trailing: Text('₱100'),
                    ),
                    ListTile(
                      leading: Icon(Icons.pool,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Pool Entrance (Kids - Day Use)'),
                      trailing: Text('₱30'),
                    ),
                    ListTile(
                      leading: Icon(Icons.pool,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Pool Entrance (Kids - Overnight)'),
                      trailing: Text('₱60'),
                    ),
                    ListTile(
                      leading: Icon(Icons.beach_access,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Beach Entrance (Adult - Day Use)'),
                      trailing: Text('₱20'),
                    ),
                    ListTile(
                      leading: Icon(Icons.beach_access,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Beach Entrance (Adult - Overnight)'),
                      trailing: Text('₱40'),
                    ),
                    ListTile(
                      leading: Icon(Icons.beach_access,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Beach Entrance (Kids - Day Use)'),
                      trailing: Text('₱15'),
                    ),
                    ListTile(
                      leading: Icon(Icons.beach_access,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Beach Entrance (Kids - Overnight)'),
                      trailing: Text('₱30'),
                    ),

                    // Cottages
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.cottage,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Big Cottage (20-25 pax, Day Use)'),
                      trailing: Text('₱1,000'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cottage,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Big Cottage (20-25 pax, Overnight)'),
                      trailing: Text('₱1,500'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cottage,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Medium Cottage (10-15 pax, Day Use)'),
                      trailing: Text('₱600'),
                    ),
                    ListTile(
                      leading: Icon(Icons.cottage,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Medium Cottage (10-15 pax, Overnight)'),
                      trailing: Text('₱1,000'),
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
