import 'package:flutter/material.dart';
import 'package:flutter_pageview_image/app_data_image.dart';
import 'package:flutter_pageview_image/display_image.dart';

class PageViewImageScreen extends StatefulWidget {
  const PageViewImageScreen({super.key});

  @override
  State<PageViewImageScreen> createState() => _PageViewImageScreenState();
}

class _PageViewImageScreenState extends State<PageViewImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7cbbc3),
        title: Text(
          'J.K.Rowling Quotes'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 400,
            child: PageView.builder(
                itemCount: appDataImage.length,
                itemBuilder: (context, index) {
                  return DisplayImage(appDataImage: appDataImage[index]);
                }),
          )
        ],
      ),
    );
  }
}
