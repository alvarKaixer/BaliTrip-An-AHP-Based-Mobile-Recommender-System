import 'package:flutter/material.dart';

class EdgeEGSweetsMenu extends StatelessWidget {
  const EdgeEGSweetsMenu({super.key});

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
                        image: AssetImage('assets/edge_eg_sweets_menu.jpg'),
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
                          child: Icon(Icons.cake, color: Colors.orange),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'The Edge EG Sweets',
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
                      'The Edge EG Sweets',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Sweet indulgence for your cravings. Enjoy croffles, puffles, and premium treats.',
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

                    // Croffles Menu
                    _buildCategory("CROFFLES MENU", [
                      "Classic - PHP69",
                      "Chocolate - PHP80",
                      "Sugar Glaze - PHP80",
                      "Caramel - PHP80",
                      "Peanut Butter - PHP80",
                      "Strawberry - PHP80",
                      "Nutella - PHP120",
                    ]),
                    _buildCategory("PREMIUM FLAVOR", [
                      "Peanut Butter Almond - PHP130",
                      "Graham & Cream - PHP130",
                      "Tiger Cream - PHP130",
                      "Cookies & Cream - PHP140",
                      "S’mores - PHP140",
                      "Chocolate Almond - PHP150",
                      "Bananatella - PHP150",
                      "Mango Graham - PHP150",
                    ]),
                    _buildCategory("CROFFLE IN A BOX", [
                      "3 Premium Assorted - PHP410",
                      "3 Classic Assorted - PHP270",
                      "1 Premium / 2 Classic - PHP310",
                    ]),
                    _buildCategory("PUFFLE BITES", [
                      "9 Assorted Flavors (5 Premium & 4 Classic) - PHP998",
                    ]),
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
              color: Colors.black, // Ensure the category title is visible
            ),
          ),
          children: items
              .map(
                (item) => ListTile(
                  title: Text(
                    item,
                    style: TextStyle(
                        color: Colors.black), // Ensure text is visible
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
