import 'package:flutter/material.dart';

class ContactUsPageMobile extends StatelessWidget {
  const ContactUsPageMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 100, right: 500, left: 500),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 11, 11, 11),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            'Contact Us',
            style:
                TextStyle(color: Colors.white, fontSize: 30, letterSpacing: 3),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.white,
            height: 0.2,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 37, 37, 37),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text("Gaza Strip - Palestine",
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 37, 37, 37),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text("+9700597xxxxxx",
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 37, 37, 37),
                borderRadius: BorderRadius.circular(10)),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.email,
                  color: Colors.white,
                  size: 30,
                ),
                SizedBox(
                  width: 15,
                ),
                Text("email@example.com",
                    style: TextStyle(color: Colors.white, fontSize: 20))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
