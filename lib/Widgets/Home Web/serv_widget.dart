import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServWidget extends StatefulWidget {
  ServWidget({super.key, required this.url});
  final String url;
  @override
  State<ServWidget> createState() => _ServWidgetState();
}

class _ServWidgetState extends State<ServWidget> {
  double width = 300;

  double height = 180;
  double _ob = 0.6;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          width = 320;
          height = 185;
          _ob = 0;
        });
      },
      onExit: (event) {
        setState(() {
          width = 300;
          height = 180;
          _ob = 0.6;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 300),

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
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                width: width, // Set the width property here
                height: height,
                // Set the height property here
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(_ob),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
          Container(
            width: 300,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: TextStyle(color: Colors.white, fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
