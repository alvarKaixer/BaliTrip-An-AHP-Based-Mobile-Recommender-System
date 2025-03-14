import 'package:flutter/material.dart';

class KOKGrillMenu extends StatelessWidget {
  const KOKGrillMenu({super.key});

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
                        image: AssetImage('assets/k_ok_grill_menu.jpg'),
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
                          child: Icon(Icons.local_dining, color: Colors.red),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'K, OK, Grill',
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
                      'K, OK, Grill',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Delicious grilled meals and more!',
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
                    _buildCategory("Burger", [
                      "Burger - PHP 69",
                      "Burger + Fries - PHP 85",
                      "Burger + Fries + Iced Tea - PHP 100",
                      "Barkada Fries - PHP 65",
                    ]),
                    _buildCategory("Snacks", [
                      "Egg Drop Sandwich - PHP 139",
                      "Tuna Sandwich - PHP 139",
                      "Nachos - PHP 149",
                    ]),
                    _buildCategory("Pasta", [
                      "Pesto Pasta (Chicken) - PHP 179",
                      "Tuna Pasta - PHP 149",
                      "Creamy Carbonara - PHP 149",
                    ]),
                    _buildCategory("Rice Meals", [
                      "Lechon Kawali - PHP 149",
                      "Chicken Teriyaki - PHP 149",
                      "Chicken Ala King - PHP 149",
                      "Salisbury Steak - PHP 129",
                      "Free Iced Tea for every rice meal",
                    ]),
                    _buildCategory("All Day Breakfast", [
                      "Spam - PHP 119",
                      "Hotdog - PHP 109",
                      "Tocino - PHP 109",
                      "Bacon - PHP 109",
                      "Corned Beef - PHP 109",
                      "Fried Bangus - PHP 120",
                      "Extra Rice - PHP 20",
                    ]),
                    _buildCategory("Milk Tea", [
                      "Regular - PHP 95 | Large - PHP 105",
                      "Okinawa",
                      "Wintermelon",
                      "Choco Hazelnut",
                      "Dark Chocolate",
                      "Red Velvet",
                      "Matcha",
                      "Cookies and Cream",
                      "Hokkaido",
                    ]),
                    _buildCategory("Lemonades", [
                      "Small - PHP 35 | Regular - PHP 50 | Pitcher - PHP 120",
                      "Moringa Lemonade",
                      "Raspberry Lemonade",
                      "Blue Lemonade",
                      "Cucumber Lemonade",
                      "Pink Lemonade",
                      "Natural Lemonade",
                      "Iced Tea",
                    ]),
                    _buildCategory("Fruit Shake", [
                      "Regular - PHP 100",
                      "Mango Shake",
                      "Guyabano",
                      "Avocado",
                    ]),
                    _buildCategory("Fruity Soda", [
                      "Small - PHP 50 | Regular - PHP 75",
                      "Strawberry Soda",
                      "Blueberry Soda",
                      "Green Apple Soda",
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
