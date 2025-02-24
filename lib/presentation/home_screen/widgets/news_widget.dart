import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
  NewsWidget({super.key});

  final List<String> images = [
    'assets/icc_captiains.png',
    'assets/icc_captiains.png',
    'assets/icc_captiains.png',
    'assets/icc_captiains.png',
    'assets/icc_captiains.png',
    'assets/icc_captiains.png',
  ];
  final List<String> headlines = [
    'Headline 1',
    'Headline 2',
    'Headline 3',
    'Headline 4',
    'Headline 5',
    'Headline 6',
  ];
  final List<String> time = [
    '10:00 AM',
    '11:00 AM',
    '12:00 PM',
    '1:00 PM',
    '2:00 PM',
    '3:00 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 800,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade900,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top News',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: SingleChildScrollView(
              // Wrap GridView.builder in SingleChildScrollView
              physics: NeverScrollableScrollPhysics(), // Disable scrolling
              child: GridView.builder(
                shrinkWrap: true,
                // Allow GridView to take only the space it needs
                physics: NeverScrollableScrollPhysics(),
                // Disable scrolling
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  childAspectRatio: 0.8, // Adjust the aspect ratio of the cards
                ),
                itemCount: images.length,
                // Add itemCount
                itemBuilder: (context, index) {
                  return _newsCard(
                    images[index],
                    headlines[index],
                    time[index],
                  );
                },
              ),
            ),
          ),
          _btn(),
        ],
      ),
    );
  }
}

Widget _newsCard(String img, String headline, String time) {
  return Card(
    elevation: 4, // Add some elevation for a card-like appearance
    margin: EdgeInsets.all(8), // Add margin around the card
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3, // Image takes 3 parts of the available space
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.asset(
              img,
              fit: BoxFit.cover, // Ensure the image covers the area
              width: double.infinity, // Make the image take full width
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headline,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              Text(time, style: TextStyle(color: Colors.blue, fontSize: 14)),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _btn() {
  return Container(
    height: 40,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.blue,
    ),
    child: Center(
      child: GestureDetector(
        child: Text('View All', style: TextStyle(color: Colors.white)),
      ),
    ),
  );
}
