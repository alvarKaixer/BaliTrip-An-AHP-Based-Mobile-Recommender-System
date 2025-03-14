import 'package:flutter/material.dart';
import 'package:music_recommender/views/bali_trip_screen/planned_trip.dart';
import 'package:music_recommender/views/destinations/balipark.dart';
import 'package:music_recommender/views/destinations/bebedeck.dart';
import 'package:music_recommender/views/destinations/crispyking.dart';
import 'package:music_recommender/views/destinations/emmanuelspring.dart';
import 'package:music_recommender/views/destinations/escanilla.dart';
import 'package:music_recommender/views/destinations/houseofboodle.dart';
import 'package:music_recommender/views/destinations/ipvillage.dart';
import 'package:music_recommender/views/destinations/islaverde.dart';
import 'package:music_recommender/views/destinations/joannasnook.dart';
import 'package:music_recommender/views/destinations/juanaspantalan.dart';
import 'package:music_recommender/views/destinations/juanasplace.dart';
import 'package:music_recommender/views/destinations/kokgrill.dart';
import 'package:music_recommender/views/destinations/larocka.dart';
import 'package:music_recommender/views/destinations/linabumountainview.dart';
import 'package:music_recommender/views/destinations/madelines.dart';
import 'package:music_recommender/views/destinations/manginasal.dart';
import 'package:music_recommender/views/destinations/pidoybeachresort.dart';
import 'package:music_recommender/views/destinations/rrgfood.dart';
import 'package:music_recommender/views/destinations/srparishchurch.dart';
import 'package:music_recommender/views/destinations/tcafe.dart';
import 'package:music_recommender/views/destinations/theedge.dart';
import 'package:music_recommender/views/destinations/theedgeegsweets.dart';
import 'package:music_recommender/views/destinations/theedgegardenbar.dart';
import 'package:music_recommender/views/destinations/theedgekhaleesis.dart';
import 'package:music_recommender/views/destinations/theedgemaamoref.dart';
import 'package:music_recommender/views/destinations/theedgewingzone.dart';
import 'package:music_recommender/views/destinations/thespot.dart';
import 'package:music_recommender/views/destinations/hardrock.dart';
import 'package:music_recommender/views/destinations/toring.dart';
import '../create_plan_page/views/create_plan_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2E4F4F),
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Color(0xFF4A4A4A)),
        ),
      ),
      home: const BaliTripScreen(),
    );
  }
}

class BaliTripScreen extends StatelessWidget {
  const BaliTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2E4F4F),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "BaliTrip",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white, // Sets the font color to white
                fontSize: 20,
              ),
            ),
            Image.asset(
              'assets/logo2.png', // Path to the logo
              width: 40,
              height: 40,
            ),
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, // Sets the back button arrow to white
        ),
      ),
      backgroundColor: const Color(0xFFDCE3DB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome to BaliTrip!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E4F4F),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Let\'s make your trip unforgettable.',
                style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF4A4A4A),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CreatePlanPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2E4F4F),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                    ),
                    icon: const Icon(Icons.add, color: Colors.white),
                    label: const Text(
                      'Plan your Trip',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const PlannedTripPage(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4CAF50),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      elevation: 4,
                    ),
                    icon: const Icon(Icons.list, color: Colors.white),
                    label: const Text(
                      'Pending Plans',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Tourist Spots and Dining Options In Balingasag:',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E4F4F),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    const Text(
                      'Tourist Spots',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E4F4F),
                      ),
                    ),
                    const SizedBox(height: 10),
                    DestinationCard(
                      imageUrl: 'assets/hardrock.jpg',
                      title: 'HARDROCK LUX SPRING RESORT',
                      description: 'A luxurious experience awaits you!',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HardRockPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/balingasagpark.jpg',
                      title: 'Balingasag Park',
                      description:
                          'Explore the natural beauty of Balingasag Park.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BalingasagParkPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/emmanuelspring.jpg',
                      title: 'Emmanuel Spring',
                      description: 'Relax and refresh at Emmanuel Spring.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EmmanuelSpringPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/escanilla.jpg',
                      title: 'Escanilla',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EscanillaPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/ipvillage.jpg',
                      title: 'IP Village',
                      description: 'Experience the culture at IP Village.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IpVillagePage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/islaverde.jpg',
                      title: 'Isla Verde',
                      description: 'Island vibes at Isla Verde.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IslaVerdePage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/joannasnook.jpg',
                      title: 'Joanna\'s Nook',
                      description: 'A cozy spot for relaxation and food.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JoannasNookPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/larocka.jpg',
                      title: 'La Rocka',
                      description: 'A unique cultural experience at Jap Tiago.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LaRockaPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/linabumountainview.jpg',
                      title: 'Linabu Mountain View',
                      description: 'Mountain views',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const LinabuMountainViewPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/stritaparishchurch.jpg',
                      title: 'ST. RITAS PARISH CHURCH',
                      description: 'Pray to God.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SrParishChurchPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'THE EDGE',
                      description: 'Experience vibrant city life.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TheEdgePage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/thespot.jpg',
                      title: 'THE SPOT',
                      description: 'Taste authentic local cuisine.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TheSpotPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'Pidoy Beach Resort',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PidoyBeachResortPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/bebedeck.jpg',
                      title: 'Bebedeck',
                      description: 'Discover the scenic Bebedeck.',
                      onViewPressed: () {
                        // Temporary navigation to a new page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BebedeckPage(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Dining Options',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF2E4F4F),
                      ),
                    ),
                    const SizedBox(height: 10),
                    DestinationCard(
                      imageUrl: 'assets/mang_inasal.jpg',
                      title: 'MANG INASAL GAISANO',
                      description: 'Enjoy a delicious meal at Mang Inasal.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MangInasalPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'The Edge GardenBar',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EdgeGardenBarMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'The Edge Wing Zone',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EdgeWingZoneMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'The Edge Khaleesis',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EdgeKhaleesisMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'The Edge Maamo Refreshments',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EdgeMaamoMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'The Edge EG Sweets',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EdgeEGSweetsMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'RRG Food Corner',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RRGFoodCornerPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'Crispy King',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CrispyKingPage(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'Juanas Place',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => JuanasPlaceMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'The Spot: Secret Place of Toring',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Toring(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'The Spot: House of Boodle ',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TheSpotHouseOfBoodleMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'T Cafe',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TCafeMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'K, OK Grill',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => KOKGrillMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'Madelines',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Madelines(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'Juanas Pantalan',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MariaJuanasPantalanMenu(),
                          ),
                        );
                      },
                    ),
                    DestinationCard(
                      imageUrl: 'assets/theedge.jpg',
                      title: 'Jollibee',
                      description: 'A hidden gem with breathtaking views.',
                      onViewPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MariaJuanasPantalanMenu(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DestinationCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  final VoidCallback onViewPressed;

  const DestinationCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.onViewPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onViewPressed,
        child: Row(
          children: [
            Image.asset(
              imageUrl,
              width: 120,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF2E4F4F),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF4A4A4A),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlaceholderPage extends StatelessWidget {
  const PlaceholderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Placeholder')),
      body: const Center(child: Text('Placeholder Page')),
    );
  }
}
