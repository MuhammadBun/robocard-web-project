import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServWidgetMobile extends StatefulWidget {
  ServWidgetMobile({super.key, required this.url});
  final String url;
  @override
  State<ServWidgetMobile> createState() => _ServWidgetMobileState();
}

class _ServWidgetMobileState extends State<ServWidgetMobile> {
  double width = 300;

  double height = 200;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              width: width, // Set the width property here
              height: height,
              // Set the height property here
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 48, 48, 48),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.url,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: width, // Set the width property here
              height: height,
              // Set the height property here
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.6),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
        Container(
          width: 300,
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
            style: TextStyle(color: Colors.white, fontSize: 18),
            textAlign: TextAlign.justify,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
