import 'package:flutter/material.dart';

class PidoyBeachResortPage extends StatelessWidget {
  const PidoyBeachResortPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF3F3), // Light background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with Picture and Close Button
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/pidoybeachresort.jpg'), // Corrected image path
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
                          child: Icon(Icons.beach_access, color: Colors.teal),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Pidoy Beach Resort',
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

              // Resort Information
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Pidoy Beach Resort',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'Cala-Cala, Balingasag, Misamis Oriental',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Divider(thickness: 1, color: Colors.grey),
                    const SizedBox(height: 16),
                    const Text(
                      'Rates & Accommodations',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Resort Pricing Details
                    _buildPricingItem('Entrance Fee', '₱20 per head'),
                    _buildPricingItem(
                        'Picnic Area (25 pax) - Day Use', '₱2,500'),
                    _buildPricingItem('Overnight Stay', '₱4,000'),
                    _buildPricingItem(
                        '50 Pax (24 hours, 4 aircon & 3 non-aircon rooms)',
                        '₱25,000'),
                    _buildPricingItem(
                        '25 Pax - VIP & Family Room (aircon, free picnic area)',
                        '₱13,500'),
                    _buildPricingItem(
                        '12 Pax - VIP Room (aircon, free picnic area)',
                        '₱7,500'),
                    _buildPricingItem(
                        '7 Pax (aircon, free picnic area)', '₱4,500'),
                    _buildPricingItem('5 Pax (free picnic area)', '₱3,500'),
                    _buildPricingItem('3 Pax (free picnic area)', '₱2,500'),
                    _buildPricingItem('2 Pax (free picnic area)', '₱2,000'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPricingItem(String title, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: const Icon(
          Icons.check_circle_outline,
          color: Color.fromRGBO(72, 111, 111, 1),
        ),
        title: Text(
          title,
          style: const TextStyle(fontSize: 16),
        ),
        trailing: Text(
          price,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
