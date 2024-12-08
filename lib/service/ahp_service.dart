import 'dart:convert';
import 'package:http/http.dart' as http;

class AHPService {
  final String apiUrl =
      'https://balitripapi.onrender.com'; // Replace with your actual API URL

  // Function to send AHP responses with Bearer token
  Future<Map<String, dynamic>> sendAHPResponses(
    List<Map<String, dynamic>> responses,
    String token,
  ) async {
    try {
      // Set the Authorization header with the Bearer token
      final response = await http.post(
        Uri.parse('$apiUrl/ahp'), // Your AHP endpoint
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token', // Include the Bearer token
        },
        body: json.encode({'responses': responses}),
      );

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to submit AHP responses: ${response.body}');
      }
    } catch (e) {
      throw Exception('Error sending AHP responses: $e');
    }
  }
}
