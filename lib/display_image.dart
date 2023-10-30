import 'package:flutter/material.dart';
import 'package:flutter_pageview_image/app_data_image.dart';

class DisplayImage extends StatelessWidget {
  final AppDataImage appDataImage;
  const DisplayImage({super.key, required this.appDataImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
            image: AssetImage(appDataImage.imagePath), fit: BoxFit.cover),
      ),
    );
  }
}
