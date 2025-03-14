import 'package:flutter/material.dart';

class TheSpotPage extends StatelessWidget {
  const TheSpotPage({Key? key}) : super(key: key);

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
                            'assets/thespot.jpg'), // Update with The Spot image
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
                          child: Icon(Icons.location_on,
                              color: Colors.green), // Location icon
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'The Spot',
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

              // Information Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'The Spot - Fun for All Ages',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Dumarait, Balingasag, Misamis Oriental',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 16),
                    Divider(thickness: 1, color: Colors.grey),
                    SizedBox(height: 16),

                    // Attractions & Activities
                    Text(
                      'Attractions & Activities',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16),

                    ListTile(
                      leading: Icon(Icons.restaurant,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Dine-In Restaurant'),
                    ),
                    ListTile(
                      leading: Icon(Icons.celebration,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Dinosaur Themed Park'),
                    ),
                    ListTile(
                      leading: Icon(Icons.sports_volleyball,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Trampoline'),
                    ),
                    ListTile(
                      leading: Icon(Icons.slideshow,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Slides'),
                    ),
                    ListTile(
                      leading: Icon(Icons.chair_alt,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Swings'),
                    ),
                    ListTile(
                      leading: Icon(Icons.remove,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Seesaw'),
                    ),
                    ListTile(
                      leading: Icon(Icons.celebration,
                          color: Color.fromRGBO(72, 111, 111, 1)),
                      title: Text('Venues'),
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
