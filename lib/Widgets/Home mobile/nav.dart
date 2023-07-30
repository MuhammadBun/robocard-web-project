import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavBarMobileWidget extends StatelessWidget {
  final VoidCallback? onHome;
  final VoidCallback? onAbout;
  final VoidCallback? onServices;
  final VoidCallback? onPortfolio;
  final VoidCallback? onContactUs;
  final VoidCallback? onDrawer;
  final String currentPage;

  const NavBarMobileWidget(
      {Key? key,
      this.onHome,
      this.onAbout,
      this.onServices,
      this.onPortfolio,
      this.onContactUs,
      required this.currentPage,
      required this.onDrawer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MobileNavBar(
      currentPage: currentPage,
      onDrawer: onDrawer,
    );
  }
}

class MobileNavBar extends StatelessWidget {
  final String currentPage;
  final VoidCallback? onDrawer;

  const MobileNavBar({Key? key, required this.currentPage, this.onDrawer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(  horizontal: 20),
            child: SvgPicture.asset(
              "assets/images/logo_robo.svg",
              width: 80,
              color: Colors.white,
            ), 
          ),
          IconButton(
              onPressed: onDrawer,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
