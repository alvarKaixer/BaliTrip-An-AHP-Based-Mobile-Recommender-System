import 'package:flutter/material.dart';
import 'package:music_recommender/screens/login_screen.dart';

void main() {
  runApp(const BaliTripApp());
}

class BaliTripApp extends StatelessWidget {
  const BaliTripApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BaliTrip',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3A42B7), // Main theme color
          primary:
              const Color.fromARGB(255, 249, 253, 253), // Custom primary color
          secondary: const Color(0xFF4258B7), // Custom secondary color
        ),
        useMaterial3: true,
      ),
      home: const LoginScreen(), // Updated to your main BaliTrip screen
    );
  }
}
