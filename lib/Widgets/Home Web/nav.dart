import 'package:flutter/material.dart';
import 'package:robocard_portfolio/Widgets/nav_buttons.dart';

class NavBarWidget extends StatelessWidget {
  final VoidCallback? onHome;
  final VoidCallback? onAbout;
  final VoidCallback? onServices;
  final VoidCallback? onPortfolio;
  final VoidCallback? onContactUs;
  final String currentPage;

  const NavBarWidget({
    Key? key,
    this.onHome,
    this.onAbout,
    this.onServices,
    this.onPortfolio,
    this.onContactUs,
    required this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return WebNaveBar(
            onHome: onHome,
            onAbout: onAbout,
            onServices: onServices,
            onPortfolio: onPortfolio,
            onContactUs: onContactUs,
            currentPage: currentPage,
          );
        } else {
          return MobileNavBar(currentPage: currentPage);
        }
      },
    );
  }
}

class WebNaveBar extends StatefulWidget {
  final VoidCallback? onHome;
  final VoidCallback? onAbout;
  final VoidCallback? onServices;
  final VoidCallback? onPortfolio;
  final VoidCallback? onContactUs;
  final String currentPage;

  const WebNaveBar({
    Key? key,
    this.onHome,
    this.onAbout,
    this.onServices,
    this.onPortfolio,
    this.onContactUs,
    required this.currentPage,
  }) : super(key: key);

  @override
  State<WebNaveBar> createState() => _WebNaveBarState();
}

class _WebNaveBarState extends State<WebNaveBar> {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 11, 11, 11),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Text(
              'RoboCard',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavButton(
                onPressed:
                    widget.onHome, text:
                    "Home", isSelected:
                    widget.currentPage ==
                        'Home'),
              NavButton(
                onPressed:
                    widget.onAbout, text:
                    "About Us", isSelected:
                    widget.currentPage ==
                        'About Us'),
              NavButton(
                onPressed:
                    widget.onServices, text:
                    "Services", isSelected:
                    widget.currentPage ==
                        'Services'),
              NavButton(
                onPressed:
                    widget.onPortfolio, text:
                    "Portfolio", isSelected:
                    widget.currentPage ==
                        'Portfolio'),
              NavButton(
                onPressed:
                    widget.onContactUs, text:
                    "Contact Us", isSelected:
                    widget.currentPage ==
                        'Contact Us'),
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  final String currentPage;

  const MobileNavBar({Key? key, required this.currentPage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("wee"),
    );
  }
}
