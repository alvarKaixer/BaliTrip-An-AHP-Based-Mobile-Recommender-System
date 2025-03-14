class Destination {
  final String title;
  final String link;
  final String category;
  final String imageUrl;

  Destination({
    required this.title,
    required this.link,
    required this.category,
    required this.imageUrl,
  });

  factory Destination.fromJson(Map<String, dynamic> data) {
    return Destination(
      title: data['title'],
      link: data['link'],
      category: data['category'],
      imageUrl: data['image_url'],
    );
  }
}
