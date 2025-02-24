import 'package:flutter/material.dart';

class CarouselSlider extends StatefulWidget {
  @override
  _CarouselSliderState createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 2;

  final List<String> images = [
    'assets/icc_captiains.png',
    'assets/icc_captiains.png',
    'assets/icc_captiains.png',
    'assets/icc_captiains.png',
    'assets/icc_captiains.png',
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(images[index], fit: BoxFit.cover),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            images.length,
            (index) => Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == index ? Colors.white : Colors.grey,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
