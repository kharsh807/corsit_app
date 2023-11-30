import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class EventCard extends StatelessWidget {
  final String cardText;
  final String imageUrls;
  final String title;

  const EventCard({
    required this.cardText,
    required this.imageUrls,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black45,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: imageUrls,
                height: 140,
                fit: BoxFit.cover,
                imageErrorBuilder: (context, error, stackTrace) {
                  // If an error occurs while loading the image, display an error icon.
                  return Icon(Icons.error);
                },
              ),
            ),
            SizedBox(height: 8,),
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 8,),
            // Wrap only the Text part in a SingleChildScrollView
            Container(
              height: 150, // Set a fixed height or adjust as needed
              child: SingleChildScrollView(
                child: Text(
                  cardText,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
