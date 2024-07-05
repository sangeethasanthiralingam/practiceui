import 'package:flutter/material.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({super.key});

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 200,
          width: 350,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 232, 232),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Clients Review',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 148, 21, 212),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Absolutely fantastic service! I required assistance navigating the airport due to mobility issues, and the wheelchair service provided by this company was exceptional. The staff were incredibly friendly, prompt, and professional. Made my travel experience stress-free and smooth. Highly recommend!',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      'Rating: ',
                      style: TextStyle(fontSize: 18),
                    ),
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    Icon(Icons.star, color: Colors.orange, size: 18),
                    Icon(Icons.star_border, color: Colors.orange, size: 18),
                    SizedBox(
                      width: 25,
                    ),
                    Text('25th April 2024 at 2:03PM')
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          // right: 0,
          // left: 250,
          // top: 0,
          right: 15,
          top: -15,

          child: InkWell(
            //  onTap: _pickImage,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(45, 0, 0, 0),
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
                color: Color.fromARGB(255, 148, 21, 212),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.rate_review_outlined,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
