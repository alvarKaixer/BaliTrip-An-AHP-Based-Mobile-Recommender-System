import 'package:flutter/material.dart';

class MariaJuanasPantalanMenu extends StatelessWidget {
  const MariaJuanasPantalanMenu({super.key});

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
                        image: AssetImage('assets/maria_juanas_pantalan.jpg'),
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
                          child:
                              Icon(Icons.restaurant, color: Colors.redAccent),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "Maria Juana's Pantalan",
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
                      "Maria Juana's Pantalan",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Pantalan | Barangay 6, Balingasag, Misamis Oriental',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(thickness: 1, color: Colors.grey),
                    const SizedBox(height: 16),
                    _buildCategory("Manok", [
                      "Fried Chicken (5 pcs) - 225 pesos",
                      "Shanghai Rolls - 120 pesos",
                      "Breaded Chicken Fillet - 225 pesos",
                      "Buffalo Chix - 250 pesos",
                      "Chicken Glazed - 250 pesos",
                    ]),
                    _buildCategory("Baboy/Meat", [
                      "Lechon Kawali - 220 pesos",
                      "Sizzling Sisig - 160 pesos",
                      "Shanghai Rolls - 120 pesos",
                      "Sinigang na Baboy - 250 pesos",
                      "Kare-Kare - 290 pesos",
                      "Baby Backribs - 350 pesos",
                    ]),
                    _buildCategory("Seafood", [
                      "Calamares - 210 pesos",
                      "Kinilaw - 210 pesos",
                      "Tinola (isda) - 210 pesos",
                      "Garlic Butter Shrimp - 220 pesos",
                      "Sweet & Spicy Shrimp - 220 pesos",
                      "Hot & Spicy Squid - 220 pesos",
                      "Sinigang na Shrimp/Fish - 250 pesos",
                      "Sweet & Sour Fish - 250 pesos",
                    ]),
                    _buildCategory("Bundles", [
                      "Family Treat - 790 pesos",
                      "Seafood Boodle - 1,150 pesos",
                      "Ultimo Nigo - 1,050 pesos",
                      "Pacals Kini - 599 pesos",
                      "Barkada Bundle - 499 pesos",
                    ]),
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
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ExpansionTile(
          title: Text(
            title,
            style: const TextStyle(
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
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
