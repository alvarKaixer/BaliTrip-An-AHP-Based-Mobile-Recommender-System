import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

// Base URL of your backend API
const String apiUrl =
    "https://your-nodejs-api.com"; // Replace with your actual backend URL

class AuthService {
  // Function to login and get the JWT token
  Future<String?> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(
            '$apiUrl/login'), // Adjust URL for your backend login endpoint
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        final String token =
            responseData['token']; // Assuming the token is returned as 'token'
        await _storeToken(token); // Store token in SharedPreferences
        return token;
      } else {
        // Handle error (e.g., invalid credentials)
        throw Exception('Failed to authenticate user');
      }
    } catch (e) {
      throw Exception('Error logging in: $e');
    }
  }

  // Function to register a new user (if you have this route)
  Future<String?> register(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(
            '$apiUrl/register'), // Adjust URL for your backend register endpoint
        body: jsonEncode({
          'email': email,
          'password': password,
        }),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 201) {
        final responseData = jsonDecode(response.body);
        final String token =
            responseData['token']; // Assuming the token is returned as 'token'
        await _storeToken(token); // Store token in SharedPreferences
        return token;
      } else {
        // Handle error (e.g., email already in use)
        throw Exception('Failed to register user');
      }
    } catch (e) {
      throw Exception('Error registering user: $e');
    }
  }

  // Function to store the JWT token locally using SharedPreferences
  Future<void> _storeToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('jwt_token', token);
  }

  // Function to get the stored JWT token
  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('jwt_token');
  }

  // Function to log out by deleting the token
  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('jwt_token');
  }
}
