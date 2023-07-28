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
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      child: MaterialButton(
        color: Color.fromARGB(255, 28, 28, 28),
        minWidth: 100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20),
        onPressed: onTap,
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
