import 'package:flutter/material.dart';

class HomePageMobile extends StatelessWidget {
  const HomePageMobile({super.key});

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
                'AI-POWERED ROBOT GUIDANCE',
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
            'Our AI-powered robot guides are designed to revolutionize the way people navigate buildings. With real-time information about rooms and building features, our robot guides make it easier for users to find their way in hospitals, universities, and more. Experience the future of building navigation with our innovative technology',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w200, fontSize: 24),
            textAlign: TextAlign.justify,maxLines: 4,
          ),
        ),
      ],
    );
  }
}
