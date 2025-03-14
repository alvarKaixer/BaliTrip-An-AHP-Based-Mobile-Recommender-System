import 'package:flutter/material.dart';

class Toring extends StatelessWidget {
  const Toring({super.key});

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
                        image: AssetImage('assets/the_spot_menu.jpg'),
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
                          child: Icon(Icons.restaurant, color: Colors.green),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'The Spot: Secret Place of Toring',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
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
                      'The Spot: Secret Place of Toring',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Serving the best pork, chicken, seafood, soups, and more at affordable prices!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(thickness: 1, color: Colors.grey),
                    const SizedBox(height: 16),
                    _buildCategory("PORK", [
                      "Crispy Pata - PHP599",
                      "Lechon Kawali - PHP249",
                      "Grilled Liempo - PHP249",
                      "Pork Binagoongan - PHP220",
                      "Lumpia Shanghai - PHP120",
                      "Pork Adobo - PHP245",
                      "Pork Humba - PHP245",
                      "Pork Steak - PHP245",
                      "Pork Sisig - PHP140",
                    ]),
                    _buildCategory("CHICKEN", [
                      "Fried Chicken - PHP225",
                      "Battered Chicken - PHP225",
                      "Buffalo Wings - PHP249",
                      "Chicken Fillet - PHP225",
                      "(Native) Tinola - PHP250",
                      "Halang Halang - PHP279",
                    ]),
                    _buildCategory("SOUP", [
                      "Bulalo (M) - PHP450",
                      "Bulalo (L) - PHP550",
                      "Fish Sinigang - PHP270",
                      "Fish Tinola - PHP249",
                      "Corn Soup - PHP150",
                      "Mushroom Soup - PHP150",
                    ]),
                    _buildCategory("SEAFOOD", [
                      "Tuna Belly (per gram)",
                      "Tuna Sisig - PHP140",
                      "Kinilaw - PHP240",
                      "Inun-Onan - PHP240",
                      "Taosi Tuna - PHP249",
                      "Fish Sweet & Sour - PHP249",
                      "Daing na Bangus - PHP220",
                      "Boneless Bangus - PHP250",
                      "Squid Calamari - PHP240",
                      "Sizzling Squid - PHP240",
                      "Squid Adobo - PHP240",
                      "Grilled Squid (per gram)",
                      "Butter Garlic Shrimp - PHP240",
                      "Sizzling Gambas - PHP240",
                      "Shrimp Adobo - PHP240",
                      "Seafood Jumble - PHP420",
                      "Shrimp Troupe - PHP385",
                    ]),
                    _buildCategory("NOODLES, VEGGIES & EXTRAS", [
                      "Pancit Canton - PHP140",
                      "Sotanghon Guisado - PHP140",
                      "Bihon Guisado - PHP140",
                      "Lomi (Pork/Chicken) - PHP120",
                      "Chop Suey - PHP180",
                      "Four Seasons - PHP240",
                      "Rice Cup - PHP20",
                      "Rice Platter - PHP100",
                    ]),
                    const SizedBox(height: 20),
                    const Divider(thickness: 1, color: Colors.grey),
                    const SizedBox(height: 16),
                    const Text(
                      'Location',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '📍 Minergy Road, Mambayaan, Balingasag',
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
