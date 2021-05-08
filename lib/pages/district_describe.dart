import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DistrictDiscribe extends StatefulWidget {
  @override
  _DistrictDiscribeState createState() => _DistrictDiscribeState();
}

class _DistrictDiscribeState extends State<DistrictDiscribe> {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
              child: PageView(
                physics: BouncingScrollPhysics(),
                controller: _pageController,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    //margin: EdgeInsets.only(right: 25.0),
                    //height: MediaQuery.of(context).size.width * 0.53,
                    decoration: BoxDecoration(
                      //borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img4.jpg"),
                      ),
                    ),
                    /*child: Stack(
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
                    ),*/
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 25.0),
                    // height: MediaQuery.of(context).size.width * 0.53,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img1.jpg"),
                      ),
                    ),
                    /*child: Stack(
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
                    ),*/
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 25.0),
                    // height: MediaQuery.of(context).size.width * 0.53,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img2.jpg"),
                      ),
                    ),
                    /*child: Stack(
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
                    ),*/
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 25.0),
                    // height: MediaQuery.of(context).size.width * 0.53,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img3.jpg"),
                      ),
                    ),
                    /*child: Stack(
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
                    ),*/
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 25.0),
                    // height: MediaQuery.of(context).size.width * 0.53,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img5.jpg"),
                      ),
                    ),
                    /*   child: Stack(
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
                    ),*/
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 25.0),
                    // height: MediaQuery.of(context).size.width * 0.53,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img6.jpg"),
                      ),
                    ),
                    /*child: Stack(
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
                    ),*/
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 25.0),
                    // height: MediaQuery.of(context).size.width * 0.53,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img8.jpg"),
                      ),
                    ),
                    /*child: Stack(
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
                    ),*/
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 25.0),
                    // height: MediaQuery.of(context).size.width * 0.53,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(9.6),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img11.jpg"),
                      ),
                    ),
                    /*child: Stack(
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
                    ),*/
                  ),
                ],
              ),
            ),
            Positioned(
              top: 5,
              child: SafeArea(
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    height: 55.6,
                    width: 55.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Colors.transparent,
                    ),
                    child: Image.asset(
                      'assets/icons/back.png',
                      width: 20,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 5,
              right: 0,
              child: SafeArea(
                child: Container(
                  child: Container(
                    height: 55.6,
                    width: 55.6,
                    padding: EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(9.6),
                      color: Colors.transparent,
                    ),
                    child: Image.asset(
                      'assets/icons/heart2.png',
                      width: 18,
                      height: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(left: 28.8, right: 28.8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmoothPageIndicator(
                        controller: _pageController,
                        count: 8,
                        effect: ExpandingDotsEffect(
                          activeDotColor: Color(0xFFFFFFFF),
                          dotColor: Color(0xFFababab),
                          dotHeight: 4.8,
                          dotWidth: 6,
                          spacing: 4.8,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        child: Text(
                          "North \nCentral",
                          maxLines: 2,
                          style: GoogleFonts.playfairDisplay(
                              fontSize: 45.6,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 40,
                          child: Text(
                            "Anuradhapura is a major city in Sri Lanka."
                            " It is the capital city of North Central "
                            "Province, Sri Lanka and the capital of "
                            "Anuradhapura District. Anuradhapura"
                            " is one of the ancient capitals of"
                            " Sri Lanka, famous for its well-preserved "
                            "ruins of an ancient Sinhala civilization.",
                            // maxLines: 5,
                            style: GoogleFonts.abhayaLibre(
                                fontSize: 19.2,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width-50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
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
                                          "Map",
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
                              Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.black12,
                                    borderRadius: BorderRadius.circular(9.6),
                                    border: Border.all(
                                      color: Colors.white,
                                      width: 1,
                                      style: BorderStyle.solid,
                                    ),),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
                                    child: Text(
                                      'Explore Now >>',
                                      style: GoogleFonts.lato(
                                          fontSize: 19.2,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
