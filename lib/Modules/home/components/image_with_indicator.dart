import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageWithIndicator extends StatefulWidget {
  final List<String> image;
  final double height;
  final double? viewportFraction;
  final bool autoPlay;

  const ImageWithIndicator({
    super.key,
    required this.image,
    required this.height,
    this.viewportFraction,
    this.autoPlay = true,
  });

  @override
  _ImageWithIndicatorState createState() => _ImageWithIndicatorState();
}

class _ImageWithIndicatorState extends State<ImageWithIndicator> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.image.map((item) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                item,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            );
          }).toList(),
          options: CarouselOptions(
            height: widget.height,
            autoPlay: widget.autoPlay,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: widget.viewportFraction ?? 0.9,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.image.length, (index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: currentIndex == index ? 12 : 8,
              height: 8,
              decoration: BoxDecoration(
                color: currentIndex == index ? Colors.blue : Colors.grey,
                borderRadius: BorderRadius.circular(4),
              ),
            );
          }),
        ),
      ],
    );
  }
}
