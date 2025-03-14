import 'package:flutter/material.dart';

class EdgeMaamoMenu extends StatelessWidget {
  const EdgeMaamoMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Edge Maamo Refreshments',
          style: TextStyle(
            color: Colors.white, // White text
            fontWeight: FontWeight.bold, // Bold text
          ),
        ),
        backgroundColor: Color(0xFF2E4F4F),
        iconTheme: IconThemeData(
          color: Colors.white, // White back arrow
          size: 28, // Slightly larger for bold effect
        ),
      ),
      body: ListView(
        children: [
          // Added picture and short description
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/edge_maamo_menu.jpg', // Ensure this image exists in your assets folder
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  'Quench your thirst with our delicious fruit shakes, milk tea, iced coffee, and Filipino treats. The perfect place for a refreshing break!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          _buildCategory("FRUIT SHAKES", [
            "Mango Shake - PHP135",
            "Avocado Shake - PHP135",
            "Strawberry Shake - PHP115",
            "Blueberry Shake - PHP115",
            "Green Apple Shake - PHP115",
            "Dragon fruit Shake - PHP95",
            "Jackfruit Shake - PHP100",
          ]),
          _buildCategory("MILK TEA", [
            "Chocolate - PHP79",
            "Dark Chocolate - PHP89",
            "Cookies & Cream - PHP79",
            "Winter Melon - PHP79",
            "Taro - PHP79",
            "Matcha - PHP79",
          ]),
          _buildCategory("COMBO’S", [
            "Beef Burger with Shake (Solo) - PHP155",
            "Beef Burger with Shake & Fries (Solo) - PHP199",
            "Friend Combo 3 Sets Beef Burger With Shake 1 Fries - PHP459",
            "Family Combo 4 Sets Beef Burger With Shake 2 Fries - PHP599",
          ]),
          _buildCategory("SOLO", [
            "Fries (Cheese, Sour & Cream, BBQ) Good for 2 - PHP110",
            "Special Burger - PHP85",
          ]),
          _buildCategory("ICED COFFEE", [
            "Iced Caramel Macchiato - PHP89",
            "Iced Latte - PHP89",
          ]),
          _buildCategory("FILIPINO FOOD", [
            "Ube Banana Turon (3pcs) - PHP65 (1pc PHP35)",
            "Mango Graham Turon (3pcs) - PHP105 (1pc PHP45)",
            "Mango Turon (3pcs) - PHP90 (1pc PHP45)",
            "Sweet Mongo Turon (3pcs) - PHP79 (1pc PHP45)",
          ]),
        ],
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
