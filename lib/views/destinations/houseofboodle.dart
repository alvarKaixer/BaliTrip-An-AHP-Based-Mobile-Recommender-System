import 'package:flutter/material.dart';

class TheSpotHouseOfBoodleMenu extends StatelessWidget {
  const TheSpotHouseOfBoodleMenu({super.key});

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
                        image: AssetImage('assets/the_spot_boodle_menu.jpg'),
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
                          child: Icon(Icons.restaurant_menu, color: Colors.red),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'The Spot: House of Boodle',
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
                      'The Spot: House of Boodle',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Delight in our special Boodle sets with free drinks!',
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
                    _buildCategory("People's Choice", [
                      "Set A - PHP 649: Shrimps, Fried Chicken, Pancit Guisado, Prawn Crackers, Rice & Fruits",
                      "Set B - PHP 649: Calamari, Fried Chicken, Pancit Guisado, Prawn Crackers, Rice & Fruits",
                      "Set C - PHP 649: Fish Fritter, Fried Chicken, Pancit Guisado, Prawn Crackers, Rice & Fruits",
                      "Set D - PHP 1,249: Shrimps, Calamari, Fish Fritter, Fried Chicken, Pancit Guisado, Prawn Crackers, Rice & Fruits",
                    ]),
                    _buildCategory("Boodle Special", [
                      "PHP 1,249: Pina-Upong Manok, Pancit Guisado, Lumpia Shanghai, Sweet & Sour Fish/Chicken, Rice",
                    ]),
                    _buildCategory("Boodle Supremo", [
                      "PHP 1,249: Daing na Bangus, Calamari, Fried Chicken, Lumpia Shanghai, Fish Fritter, Prawn Crackers, Fruits & Rice",
                    ]),
                    _buildCategory("Seafood Royale", [
                      "PHP 1,799: Butter Garlic Seafood Mix, Kinilaw, Calamari, Bangus, Tuna Sisig, Fruits & Rice",
                    ]),
                    _buildCategory("Shrimp Legion", [
                      "PHP 1,599: Shrimps - Butter Garlic, Fried Garlic, Adobo, Gambas, Fruits & Rice",
                    ]),
                    _buildCategory("Seafood Rookie", [
                      "PHP 1,399: Kinilaw, Daing na Bangus, Seafood Jumble, Sizzling Squid/Tuna Sisig, Fruits & Rice",
                    ]),
                    const SizedBox(height: 20),
                    const Text(
                      'Location: Minergy Road, Mambayaan, Balingasag',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
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
