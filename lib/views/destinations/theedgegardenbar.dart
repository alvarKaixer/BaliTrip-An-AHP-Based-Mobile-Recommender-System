import 'package:flutter/material.dart';

class EdgeGardenBarMenu extends StatelessWidget {
  const EdgeGardenBarMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'The Edge Garden Bar Menu',
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
          // Added picture and short description with matching format
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/edge_garden_bar.jpg', // Ensure this image exists in your assets folder
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 10),
                Text(
                  'Experience the best of The Edge Garden Bar – from mouth-watering dishes to signature drinks, all in a cozy garden ambiance.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),

          // Categories with items listed
          _buildCategory("CHICKEN", [
            "Blooming Sweet and Sour Chicken - PHP249",
            "Herb-Infused Chicken Tinola - PHP229",
          ]),
          _buildCategory("PASTA & NOODLES", [
            "Pancit Guisado - PHP299",
            "Sun Drenched Bolognese - PHP229",
          ]),
          _buildCategory("VEGETABLE", [
            "Water Spinach Adobo - PHP169",
            "Chopsuey - PHP259",
          ]),
          _buildCategory("PORK", [
            "Crispy Meadow Kare Kare - PHP299",
            "Terrace Pork BBQ - PHP299",
            "Crispy Veranda Lechon Kawali - PHP299",
            "Grilled Pork Belly - PHP299",
          ]),
          _buildCategory("FISH", [
            "Kinilaw - Ceviche - PHP249",
            "Tranquil Fish Soup - PHP210",
            "Grilled Tuna Belly - PHP299",
          ]),
          _buildCategory("BEEF", [
            "Grove Beef & Broccoli - PHP310",
            "Classic Beef Steak - PHP315",
          ]),
          _buildCategory("SEAFOOD", [
            "Mixed Seafood in Cajun Sauce - PHP329",
          ]),
          _buildCategory("SOLO SERVING (WITH RICE)", [
            "Chicken Inasal - PHP175",
            "Breaded Fried Chicken - PHP175",
            "Sweet and Sour Chicken - PHP185",
            "Breaded Pork Chop - PHP185",
            "Lechon Kawali - PHP175",
            "Pork Barbeque - PHP175",
            "Chopsuey Rice - PHP165",
            "Garlic Pepper Beef with Mushroom - PHP185",
            "Pan-seared Pork Chops with Mash Potato - PHP195",
            "Grilled Ranch Chops with Siding - PHP195",
          ]),
          _buildCategory("SALADS, DESSERTS & AD-ONS", [
            "Chocolate Ecstasy Cake (Slice) - PHP139",
            "Mixed Fresh Fruits - PHP159",
            "Vinaigrette Salad - PHP199",
            "Caesar Salad - PHP199",
            "Avocado & Corn Salad - PHP199",
            "Rice Platter - PHP135",
            "Cup of Rice - PHP40",
          ]),
          _buildCategory("COCKTAIL BAR", [
            "Gimlet - PHP179",
            "Purple Rain - PHP230",
            "Zombie - PHP179",
            "Tequila Sunrise - PHP199",
            "Bikini Martini - PHP230",
            "Rainbow Paradise - PHP230",
            "Pink Lady - PHP199",
          ]),
          _buildCategory("MOCKTAIL BAR", [
            "Lemon Squash - PHP159",
            "Orange Squash - PHP159",
            "Dragon Fruit Soda Iced Tea - PHP179",
            "Cucumber Soda Iced Tea - PHP179",
            "Cherry Soda Iced Tea - PHP179",
            "Calamansi Soda Iced Tea - PHP179",
          ]),
          _buildCategory("RUM", [
            "Bacardi Black - PHP1,599",
            "Bacardi Gold - PHP1,499",
            "Bacardi White (Superior) - PHP1,499",
          ]),
          _buildCategory("TEQUILA", [
            "Cazadores Reposado - PHP2,799",
            "El Hombre - PHP899",
            "Mojitos (Gold & Silver) - PHP650",
            "Tequila Rose - PHP1,599",
          ]),
          _buildCategory("BRANDY", [
            "Fundador Light (1L) - PHP899",
            "Fundador Double Light (1L) - PHP899",
            "Fundador Super Special (1L) - PHP799",
            "Fundador Ultra Smooth (1L) - PHP1,099",
          ]),
          _buildCategory("GIN", [
            "Pink Gin Bliss (Gin Mix) - PHP799",
            "Green Tonic (Gin Mix) - PHP799",
            "Blue Velocity (Gin Mix) - PHP899",
          ]),
          _buildCategory("WHISKY", [
            "Jagermeister - PHP1,899",
            "Jack Daniels Coke (Can) - PHP175",
            "Charles & James - PHP850",
            "Andy Player - PHP350",
          ]),
          _buildCategory("WINE", [
            "Carlo Rossi Red Moscato - PHP899",
            "Carlo Rossi California Red - PHP899",
            "Yellow Tail Pink Moscato - PHP1,100",
            "Yellow Tail Chardonnay - PHP1,100",
            "Novellino Strawberry Passion - PHP750",
            "Novellino Sparkling Red - PHP750",
          ]),
          _buildCategory("BEER, VODKA & SOJU", [
            "HAPPY TIME BUCKET (5PCS) - PHP399",
            "Red Horse (Beer Barrel) - PHP399",
            "Red Horse (1L) - PHP190",
            "Red Horse/San Miguel Flavored/Pale Pilsen, Smirn-off Mule (Bottle) - PHP85",
            "So Nice SoJu (Bottle) - PHP115",
            "Heineken (Bottle) - PHP150",
          ]),
          _buildCategory("JUICE PITCHERS & SOFTDRINKS", [
            "Cucumber Lemonade (Pitcher) - PHP199",
            "Blue Lemonade (Pitcher) - PHP199",
            "Red Iced Tea (Pitcher) - PHP199",
            "Coke (Can) - PHP75",
            "Sprite (Can) - PHP75",
            "Royale Orange (Can) - PHP75",
            "Red Bull (Can) - PHP175",
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
