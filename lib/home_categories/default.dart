import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/widget/custom_tab_indicator.dart';

class DefaultHome extends StatefulWidget {
  @override
  _DefaultHomeState createState() => _DefaultHomeState();
}

class _DefaultHomeState extends State<DefaultHome> {
  final _pageController = PageController(viewportFraction: 0.877);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(color: Color(0xffffffff)),
        child: Stack(
          children: [
            Positioned(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 60, left: 25.0),
                    child: Text(
                      "Explore\nthe Nature",
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 45.6,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                    margin: EdgeInsets.only(left: 14.4, top: 28.8),
                    child: DefaultTabController(
                      length: 4,
                      child: TabBar(
                        labelPadding: EdgeInsets.only(left: 14.4, right: 14.4),
                        indicatorPadding:
                            EdgeInsets.only(left: 14.4, right: 14.4),
                        isScrollable: true,
                        labelColor: Color(0xFF000000),
                        unselectedLabelColor: Color(0xFF8a8a8a),
                        labelStyle: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                        unselectedLabelStyle: GoogleFonts.lato(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                        indicator: RoundedRectangleTabIndicator(
                          color: Color(0xFF000000),
                          weight: 2.4,
                          width: 14.4,
                        ),
                        tabs: [
                          Tab(
                            child: Container(
                              child: Text('Recommended'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Text('Popular'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Text('New Destination'),
                            ),
                          ),
                          Tab(
                            child: Container(
                              child: Text('Hidden Gems'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.53,
                    margin: EdgeInsets.only(top: 16),
                    child: PageView(
                      physics: BouncingScrollPhysics(),
                      controller: _pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          height: MediaQuery.of(context).size.width * 0.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img4.jpg"),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 19.2,
                                left: 19.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                        left: 16.72,
                                        right: 14.4,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/icons/location.png"),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            "Raja Anuradapura,Sri Lanka",
                                            style: GoogleFonts.lato(
                                              fontSize: 16.8,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          height: MediaQuery.of(context).size.width * 0.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img1.jpg"),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 19.2,
                                left: 19.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                        left: 16.72,
                                        right: 14.4,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/icons/location.png"),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            "Raja Anuradapura,Sri Lanka",
                                            style: GoogleFonts.lato(
                                              fontSize: 16.8,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          height: MediaQuery.of(context).size.width * 0.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img2.jpg"),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 19.2,
                                left: 19.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                        left: 16.72,
                                        right: 14.4,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/icons/location.png"),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            "Raja Anuradapura,Sri Lanka",
                                            style: GoogleFonts.lato(
                                              fontSize: 16.8,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          height: MediaQuery.of(context).size.width * 0.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img3.jpg"),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 19.2,
                                left: 19.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                        left: 16.72,
                                        right: 14.4,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/icons/location.png"),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            "Raja Anuradapura,Sri Lanka",
                                            style: GoogleFonts.lato(
                                              fontSize: 16.8,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          height: MediaQuery.of(context).size.width * 0.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img5.jpg"),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 19.2,
                                left: 19.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                        left: 16.72,
                                        right: 14.4,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/icons/location.png"),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            "Raja Anuradapura,Sri Lanka",
                                            style: GoogleFonts.lato(
                                              fontSize: 16.8,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          height: MediaQuery.of(context).size.width * 0.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img6.jpg"),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 19.2,
                                left: 19.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                        left: 16.72,
                                        right: 14.4,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/icons/location.png"),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            "Raja Anuradapura,Sri Lanka",
                                            style: GoogleFonts.lato(
                                              fontSize: 16.8,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          height: MediaQuery.of(context).size.width * 0.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img8.jpg"),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 19.2,
                                left: 19.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                        left: 16.72,
                                        right: 14.4,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/icons/location.png"),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            "Raja Anuradapura,Sri Lanka",
                                            style: GoogleFonts.lato(
                                              fontSize: 16.8,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 25.0),
                          height: MediaQuery.of(context).size.width * 0.53,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/img11.jpg"),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                bottom: 19.2,
                                left: 19.2,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(4.8),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(
                                        sigmaY: 19.2, sigmaX: 19.2),
                                    child: Container(
                                      height: 36,
                                      padding: EdgeInsets.only(
                                        left: 16.72,
                                        right: 14.4,
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/icons/location.png"),
                                          SizedBox(
                                            width: 9.52,
                                          ),
                                          Text(
                                            "Raja Anuradapura,Sri Lanka",
                                            style: GoogleFonts.lato(
                                              fontSize: 16.8,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Using SmoothPageIndicator Library
                  Padding(
                    padding: EdgeInsets.only(
                      left: 25.0,
                      top: 25.0,
                    ),
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 8,
                      effect: ExpandingDotsEffect(
                          activeDotColor: Color(0xFF8a8a8a),
                          dotColor: Color(0xFFababab),
                          dotHeight: 4.8,
                          dotWidth: 6,
                          spacing: 4.8),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 48, left: 25.5, right: 25.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Popular Categories",
                          style: GoogleFonts.playfairDisplay(
                            fontSize: 28,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Text(
                          "Show All",
                          style: GoogleFonts.lato(
                            fontSize: 16.8,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8a8a8a),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 12.6),
                    height: 30.6,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25.0, right: 9.6),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 19.2),
                            height: 30.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.6),
                              border: Border.all(
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 19.2,
                                ),
                                Text(
                                  "Beach",
                                  style: GoogleFonts.playfairDisplay(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 19.2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 19.2),
                            height: 30.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.6),
                              border: Border.all(
                                color: Colors.grey,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 19.2,
                                ),
                                Text(
                                  "Mountain",
                                  style: GoogleFonts.playfairDisplay(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 19.2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 19.2),
                            height: 30.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.6),
                              border: Border.all(
                                color: Colors.green,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 19.2,
                                ),
                                Text(
                                  "WaterFalls",
                                  style: GoogleFonts.playfairDisplay(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 19.2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 19.2),
                            height: 30.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.6),
                              border: Border.all(
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 19.2,
                                ),
                                Text(
                                  "Rivers",
                                  style: GoogleFonts.playfairDisplay(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 19.2,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 19.2),
                            height: 30.6,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.6),
                              border: Border.all(
                                color: Colors.blue,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 19.2,
                                ),
                                Text(
                                  "Garden",
                                  style: GoogleFonts.playfairDisplay(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                                SizedBox(
                                  width: 19.2,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width * 0.3,
                    margin: EdgeInsets.only(top: 28, bottom: 16.8, left: 25),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/img12.jpg",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/img5.jpg",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/img3.jpg",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/img7.jpg",
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          height: MediaQuery.of(context).size.width * 0.3,
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9.6),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/images/img13.jpg",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 5,
              left: 25,
              child: Container(
                color: Colors.white,
                child: Container(
                  height: 55.6,
                  width: 55.6,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    color: Color(0x080a0928),
                  ),
                  child: Image.asset(
                    'assets/icons/menu2.png',
                    width: 20,
                    height: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 25,
              child: Container(
                color: Colors.white,
                child: Container(
                  height: 55.6,
                  width: 55.6,
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.6),
                    color: Color(0x080a0928),
                  ),
                  child: Image.asset(
                    'assets/icons/search.png',
                    width: 18,
                    height: 18,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
Widget defaultHome(){
  return Center(child: Text("Liked"),);
}*/
