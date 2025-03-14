import 'package:flutter/material.dart';

class EdgeWingZoneMenu extends StatelessWidget {
  const EdgeWingZoneMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Edge Wing Zone Menu',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color(0xFF2E4F4F),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 28,
        ),
      ),
      body: ListView(
        children: [
          // Image and short description
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/edge_wing_zone.jpg', // Ensure this image exists in your assets folder
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  'Enjoy a feast of wings, snacks, and platters at The Edge Wing Zone – perfect for solo cravings or group gatherings!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          _buildCategory("UNLIMITED WINGS & RICE", [
            "PHP249 - Flavors: Classic, Buffalo, Garlic Parmesan, Teriyaki, Barbecue, Cheese Powder, Spicy Garlic, Honey Glaze, Sour Cream Powder",
            "RULES: NO Sharing, Leftover, Takeout",
          ]),
          _buildCategory("FAMILY SETS", [
            "Family Set A (Good for 4-5) - 20 pcs Chicken Wings + 4 Cups of Rice - PHP499",
            "Barkadahan Set - Fries, Tempura, Fishball, Nachos, Calamares, Chicken Wings - PHP499",
            "Whole Fried Chicken & 4 Cups Rice (Good for 4-5) - PHP549",
            "Whole Fried Chicken (No Rice) - PHP399",
          ]),
          _buildCategory("SOLO MEALS", [
            "4 pcs Chicken + 1 cup rice - PHP135",
            "6 pcs Chicken + 1 cup rice - PHP169",
            "8 pcs Chicken + 1 cup rice - PHP199",
            "10 pcs Chicken + 1 cup rice - PHP269",
          ]),
          _buildCategory("COMBO MEALS", [
            "Fries, Lumpia, 1 cup rice - PHP199",
            "2 pcs Chicken, Fries - PHP120",
            "Fries, Nachos - PHP150",
          ]),
          _buildCategory("SNACKS", [
            "Fries - PHP75",
            "Nachos - PHP150",
            "Carbonara - PHP180",
            "Mango Float - PHP150",
            "Banana Fries - PHP50",
            "Sweet Potato Fries - PHP85",
          ]),
          _buildCategory("PLATTERS", [
            "Fried Isaw - PHP150",
            "Onion Rings - PHP150",
            "Small Cut Fried Chicken - PHP150",
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
