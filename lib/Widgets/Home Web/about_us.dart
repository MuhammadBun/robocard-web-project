import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.only(left: 30, top: 100),
              child: Text(
                'ABOUT US',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 28),
              ),
            ),
          ],
        ),
        Container(
          width: 800,
          margin: EdgeInsets.only(left: 30, top: 20),
          child: Text(
            'Our team is made up of passionate and dedicated professionals with a wealth of experience in robotics, artificial intelligence, and user experience design. We are committed to pushing the boundaries of what is possible and delivering innovative solutions that meet the needs of our customers.',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w200, fontSize: 28),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
