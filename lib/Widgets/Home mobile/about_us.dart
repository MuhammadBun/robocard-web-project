import 'package:flutter/material.dart';

class AboutUsPageMobile extends StatelessWidget {
  const AboutUsPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
                    fontSize: 26),
              ),
            ),
          ],
        ),
        Container(
          width: 400,
          margin: EdgeInsets.only(left: 30, top: 20),
          child: Text(
            'Our team is made up of passionate and dedicated professionals with a wealth of experience in robotics, artificial intelligence, and user experience design. We are committed to pushing the boundaries of what is possible and delivering innovative solutions that meet the needs of our customers.',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w200, fontSize: 24),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
