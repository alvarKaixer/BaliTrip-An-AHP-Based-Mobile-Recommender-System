import 'package:flutter/material.dart';

class EdgeKhaleesisMenu extends StatelessWidget {
  const EdgeKhaleesisMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Edge Khaleesi’s Menu',
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
                  'assets/edge_khaleesis_menu.jpg', // Ensure this image exists in your assets folder
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  'Indulge in the rich flavors of Khaleesi’s menu – offering delectable platters, sizzling delights, and a variety of pizzas to satisfy every craving.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          _buildCategory("BILAO (GOOD FOR 4-5 PERSONS)", [
            "5pcs Rice, 4pcs Fried Chicken, 4pcs Lumpia Shanghai, 4pc Tempura, 4pcs Calamares, 4pcs Siomai, Pancit Guisado Platter - PHP599",
          ]),
          _buildCategory("BILAO (GOOD FOR 6-8 PERSONS)", [
            "7pcs Rice, 6pcs Fried Chicken, 8pcs Lumpia Shanghai, 8pcs Tempura, 8pcs Calamares, 8pcs Siomai, Pancit Guisado Platter - PHP999",
          ]),
          _buildCategory("SIZZLING", [
            "Sizzling Sisig - PHP120",
            "Sizzling Tempura - PHP120",
            "Sizzling Calamares - PHP120",
            "Sizzling Chicken - PHP120",
            "Sizzling Seafood - PHP120",
            "Sizzling Fish Fillet - PHP120",
          ]),
          _buildCategory("PLATTERS", [
            "Pansit Guisado - PHP160",
            "Sotanghon - PHP160",
            "Chicken Cordon Bleu - PHP199",
            "Calamares - PHP190",
            "Shrimp Tempura - PHP190",
            "Lumpia - PHP130",
            "Seafood Mix - PHP199",
            "Sisig - PHP160",
            "Fish Fillet - PHP190",
          ]),
          _buildCategory("FRESH DOUGH HAND-TOSSED PIZZA", [
            "Khaleesi Pizza - PHP225",
            "Hawaiian Pizza - PHP225",
            "Pepperoni Pizza - PHP225",
            "Bacon & Mushroom Pizza - PHP225",
            "All Cheese Pizza - PHP225",
            "Vegetarian Pizza - PHP225",
            "All Meat Pizza - PHP250",
            "Overload Pizza - PHP250",
            "Shrimp Pizza - PHP250",
          ]),
          _buildCategory("OTHERS", [
            "Siomai Platter (Japanese, Pork) - PHP99",
            "Fries Platter - PHP99",
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
