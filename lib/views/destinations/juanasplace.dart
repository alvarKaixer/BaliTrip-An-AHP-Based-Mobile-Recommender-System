import 'package:flutter/material.dart';

class JuanasPlaceMenu extends StatelessWidget {
  const JuanasPlaceMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/juanas_place_menu.jpg'),
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
                          child: Icon(Icons.restaurant, color: Colors.orange),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Juana\'s Place',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Juana\'s Place',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Delicious home-cooked meals made with love. Enjoy our variety of chicken, pork, and seafood dishes!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(thickness: 1, color: Colors.grey),
                    const SizedBox(height: 16),
                    const Text(
                      'Menu Items',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Menu Categories
                    _buildCategory("CHICKEN", [
                      "Fried Chicken (5pcs) - PHP225",
                      "Shanghai Rolls - PHP120",
                      "Breaded Chicken Fillet - PHP225",
                      "Buffalo Chix - PHP250",
                      "Chicken Glazed - PHP250",
                    ]),
                    _buildCategory("PORK", [
                      "Lechon Kawali - PHP220",
                      "Sizzling Sisig - PHP160",
                      "Shanghai Rolls - PHP120",
                      "Sinigang - PHP250",
                      "Kare-Kare - PHP290",
                      "Baby Backribs - PHP350",
                    ]),
                    _buildCategory("SEAFOOD", [
                      "Calamares - PHP210",
                      "Kinilaw - PHP210",
                      "Tinola (Fish) - PHP210",
                      "Garlic Butter Shrimp - PHP220",
                      "Sweet & Spicy Shrimp - PHP220",
                      "Hot & Spicy Squid - PHP220",
                      "Sinigang (Shrimp/Fish) - PHP250",
                      "Sweet & Sour Fish - PHP250",
                    ]),
                    _buildCategory("BUNDLES", [
                      "Family Treat - PHP790",
                      "Seafood Boodle - PHP1,150",
                      "Ultimo Nigo - PHP1,050",
                      "Barkada Bundle - PHP499",
                      "Pacals Kini - PHP599",
                    ]),
                    const SizedBox(height: 20),
                    const Divider(thickness: 1, color: Colors.grey),
                    const SizedBox(height: 16),
                    const Text(
                      'Contact & Hours',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '📍 Open: 9AM - 9PM\n📞 For orders/bookings:\n📱 09164435763\n📱 09054435763',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategory(String title, List<String> items) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ExpansionTile(
          title: Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          children: items
              .map(
                (item) => ListTile(
                  title: Text(
                    item,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
