// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();

  // Constructor for ApiService to initialize Dio with the necessary configurations
  ApiService() {
    _dio.options.baseUrl =
        'https://balitripapi.onrender.com'; // Your API's base URL
    _dio.options.connectTimeout =
        Duration(milliseconds: 5000); // 20 seconds timeout for connection
    _dio.options.receiveTimeout =
        Duration(milliseconds: 5000); // 20 seconds timeout for receiving data
  }

  // Register a new user
  Future<Response> registerUser(Map<String, dynamic> data) async {
    try {
      final response = await _dio.post('/auth/register', data: data);
      return response; // Return the API response
    } catch (e) {
      // Handle and throw error if request fails
      rethrow;
    }
  }

  // Login user
  Future<Response> loginUser(Map<String, dynamic> data) async {
    try {
      final response = await _dio.post('/auth/login', data: data);

      if (response.statusCode == 201) {
        print('Login successful: ${response.data}');
        return response; // Successful login
      } else {
        // Handle error response
        throw Exception('Failed to login. Status Code: ${response.statusCode}');
      }
    } catch (e) {
      print('Error during login: $e');

      if (e is DioException) {
        // Check DioError and provide custom error messages
        if (e.response != null) {
          // Handle specific status codes
          if (e.response?.statusCode == 401) {
            throw Exception('Unauthorized: Invalid credentials');
          } else {
            throw Exception('API Error: ${e.response?.statusCode}');
          }
        } else {
          throw Exception(
              'Network Error: Please check your internet connection');
        }
      } else {
        throw Exception('Unknown error occurred');
      }
    }
  }

  // You can add more methods for other API calls like fetching data, updating, etc.
}
