import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                'AI-POWERED ROBOT GUIDANCE',
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
            'Our AI-powered robot guides are designed to revolutionize the way people navigate buildings. With real-time information about rooms and building features, our robot guides make it easier for users to find their way in hospitals, universities, and more. Experience the future of building navigation with our innovative technology',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w200, fontSize: 28),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
