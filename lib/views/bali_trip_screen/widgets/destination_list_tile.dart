import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DestinationListTile extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String link;
  final int index;

  const DestinationListTile({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.link,
    required this.index,
  });
  
  get c => null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrl(Uri.parse(link));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${index + 1}.",
              style: const TextStyle(color: Color(0xFF2E4F4F)),
            ),
            const SizedBox(
              width: 16,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: const Color.fromRGBO(46, 79, 79, 1),
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: c
        )],
    ),
  ));
  }
}