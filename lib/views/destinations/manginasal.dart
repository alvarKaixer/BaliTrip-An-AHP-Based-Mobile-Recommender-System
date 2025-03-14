import 'package:flutter/material.dart';

class MangInasalPage extends StatelessWidget {
  const MangInasalPage({Key? key}) : super(key: key);

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
                        image: AssetImage('assets/mang_inasal.jpg'),
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
                          'Mang Inasal',
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
                      'Mang Inasal',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Gaisano Capital, Linggangao, Balingasag, Misamis Oriental',
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

                    // Mang Inasal Menu List
                    _buildCategory("Chicken Inasal & BBQ Meals", [
                      {
                        'title': 'Chicken Inasal & Pork BBQ Family Fiesta',
                        'price': '₱799.00'
                      },
                      {'title': 'Paa Large-PM1', 'price': '₱146.00'},
                      {'title': 'Pecho Large-PM2', 'price': '₱174.00'},
                      {
                        'title': 'Chicken Inasal Paa & Pork BBQ Buddy Size',
                        'price': '₱369.00'
                      },
                      {'title': 'Chicken Inasal Regular', 'price': '₱112.00'},
                      {
                        'title': '6 Pcs Chicken Inasal Regular Family Size',
                        'price': '₱542.00'
                      },
                      {
                        'title': '8 Pcs Chicken Inasal Regular Family Size',
                        'price': '₱733.00'
                      },
                    ]),
                    _buildCategory("Family Combos", [
                      {
                        'title': 'Paa Large Family Size + Palabok Family Size',
                        'price': '₱843.00'
                      },
                      {
                        'title':
                            'Pecho Large Family Size + Palabok Family Size',
                        'price': '₱949.00'
                      },
                      {'title': 'Fiesta Meal Paa Large', 'price': '₱192.00'},
                      {'title': 'Fiesta Meal Pecho Large', 'price': '₱220.00'},
                    ]),
                    _buildCategory("BBQ Specials", [
                      {'title': '2pcs Pork BBQ', 'price': '₱112.00'},
                      {
                        'title':
                            '2pcs Pork BBQ with Peanut Sauce and Java Rice',
                        'price': '₱146.00'
                      },
                      {'title': '1pc Pork BBQ Ala Carte', 'price': '₱57.00'},
                    ]),
                    _buildCategory("Desserts", [
                      {'title': 'Extra Creamy Halo-Halo', 'price': '₱76.00'},
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

  Widget _buildCategory(String title, List<Map<String, String>> items) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
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
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(
                    Icons.check_circle_outline,
                    color: Color.fromRGBO(72, 111, 111, 1),
                  ),
                  title: Text(
                    item['title']!,
                    style: const TextStyle(fontSize: 16),
                  ),
                  trailing: Text(
                    item['price']!,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
