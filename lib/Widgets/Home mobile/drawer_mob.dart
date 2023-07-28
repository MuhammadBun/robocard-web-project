import 'package:flutter/material.dart';

class OnDrawerMobile extends StatelessWidget {
  const OnDrawerMobile(
      {super.key,
      required this.onHome,
      this.onAbout,
      this.onPortfolio,
      this.onServices,
      this.onContactUs});
  final VoidCallback? onHome;
  final VoidCallback? onAbout;
  final VoidCallback? onPortfolio;
  final VoidCallback? onServices;
  final VoidCallback? onContactUs;
  Widget cardChoise(String text, VoidCallback? onTap) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        margin: EdgeInsets.all(10),
        width: 240,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 28, 28, 28),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 11, 11, 11),
      child: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'RoboCard',
              style: TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            cardChoise("Home", onHome),
            cardChoise("About", onAbout),
            cardChoise("Portfolio", onServices),
            cardChoise("Services", onServices),
            cardChoise("ContactUs", onContactUs),
          ],
        ),
      ),
    );
  }
}
