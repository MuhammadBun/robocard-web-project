import 'package:flutter/material.dart';
import 'package:robocard_portfolio/Widgets/Home%20mobile/about_us.dart';
import 'package:robocard_portfolio/Widgets/Home%20mobile/drawer_mob.dart';

import 'package:robocard_portfolio/Widgets/Home%20mobile/nav.dart';
import 'package:robocard_portfolio/Widgets/Home%20mobile/proto.dart';

import '../Home Web/about_us.dart';
import 'contact_us.dart';
import 'home_page.dart';

class HomeScreenMobile extends StatefulWidget {
  const HomeScreenMobile({Key? key}) : super(key: key);

  @override
  _HomeScreenMobileState createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenMobile> {
  final PageController _pageController = PageController();
  final List<Widget> _pages = [
    HomePageMobile(),
    AboutUsPageMobile(),
    PortfolioMobile(),
    PortfolioMobile(),
    ContactUsPageMobile(),
  ];
  final List<String> _pageNames = [
    'Home',
    'About Us',
    'Services',
    'Portfolio',
    'Contact Us',
  ];
  String _currentPage = 'Home';
  final List<String> _imageUrls = [
    'https://www.eweek.com/wp-content/uploads/2023/05/top-generative-ai-apps-tools.png',
    'https://www.fticonsulting.com/-/media/images/shared-content/insights/fti-journal/2023/mar/heres-what-coming-ai-act-means-business.jpg',
    'https://www.teahub.io/photos/full/140-1402252_wallpaper-from-technics-category-data-src-cpu-wallpapers.jpg',
    'https://probonoaustralia.com.au/wp-content/uploads/2021/12/Artificial-intelligence-to-help-solve-fundraising-challenges-in-2022.jpg',
    'https://etimg.etb2bimg.com/photo/100540811.cms',
  ];
  int _currentImageIndex = 0;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void _navigateTo(int page) {
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
    setState(() {
      _currentPage = _pageNames[page];
      _currentImageIndex = page;
      print(_currentPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: OnDrawerMobile(
        onHome: () {
          _navigateTo(0);
          Navigator.pop(context);
        },
        onAbout: () {
          _navigateTo(1);
          Navigator.pop(context);
        },
        onServices: () {
          _navigateTo(2);
          Navigator.pop(context);
        },
        onPortfolio: () {
          _navigateTo(3);
          Navigator.pop(context);
        },
        onContactUs: () {
          _navigateTo(4);
          Navigator.pop(context);
        },
      ),
      backgroundColor: Color.fromARGB(255, 24, 24, 24),
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              left: 0,
              top: 0,
              right: 0,
              child: Image.network(
                _imageUrls[_currentImageIndex],
                width: double.maxFinite,
                height: double.maxFinite,
                fit: BoxFit.cover,
              )),
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: Colors.black.withOpacity(0.8),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NavBarMobileWidget(
   
                currentPage: _currentPage,
                onDrawer: () {
                  scaffoldKey.currentState?.openDrawer();
                  print("object");
                },
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  children: _pages,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
