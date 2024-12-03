// models/recommendation.dart

class Recommendation {
  final String name;
  final String location;
  final double entranceFee; // Changed to double to allow for more flexible currency values

  Recommendation({
    required this.name,
    required this.location,
    required this.entranceFee,
  });

  // Override toString method for better debugging and logging
  @override
  String toString() {
    return 'Recommendation(name: $name, location: $location, entranceFee: ₱$entranceFee)';
  }

  // Override == and hashCode to make comparisons between Recommendation objects more meaningful
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Recommendation &&
        other.name == name &&
        other.location == location &&
        other.entranceFee == entranceFee;
  }

  @override
  int get hashCode => name.hashCode ^ location.hashCode ^ entranceFee.hashCode;
  
  // You can also add a method to validate the entrance fee if needed
  bool isValidEntranceFee() {
    return entranceFee >= 0;
  }

  // Factory constructor for creating a Recommendation from a map (for when you need to handle JSON, databases, etc.)
  factory Recommendation.fromMap(Map<String, dynamic> map) {
    return Recommendation(
      name: map['name'],
      location: map['location'],
      entranceFee: map['entranceFee']?.toDouble() ?? 0.0, // Ensuring it's a double
    );
  }

  // Method to convert Recommendation to a map (for when saving or sending it over a network)
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'location': location,
      'entranceFee': entranceFee,
    };
  }
}
