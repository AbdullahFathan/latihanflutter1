import 'dart:collection';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_travel_app/colors_and_font.dart';
import 'package:flutter_travel_app/widget/navigation_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _current = 0;
  var travlogsData = [
    {
      "name": "\"Yogyakarta!\"",
      "content":
          "Halo guys, David di sini dengan Travelkuy!! di Yogyakarta!! Mengunjungi alamnya dan mencari tahu tempat jual gadget oke, hehe...",
      "place": "Yogyakarta, Indonesia",
      "image": "assets/images/travlog_yogyakarta.png"
    },
    {
      "name": "\"Tokyo!\"",
      "content":
          "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
      "place": "Tokyo, Japan",
      "image": "assets/images/travlog_tokyo.png"
    },
    {
      "name": "\"Yogyakarta!\"",
      "content":
          "Halo guys, David di sini dengan Travelkuy!! di Yogyakarta!! Mengunjungi alamnya dan mencari tahu tempat jual gadget oke, hehe...",
      "place": "Yogyakarta, Indonesia",
      "image": "assets/images/travlog_yogyakarta.png"
    },
    {
      "name": "\"Tokyo!\"",
      "content":
          "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
      "place": "Tokyo, Japan",
      "image": "assets/images/travlog_tokyo.png"
    },
    {
      "name": "\"Yogyakarta!\"",
      "content":
          "Halo guys, David di sini dengan Travelkuy!! di Yogyakarta!! Mengunjungi alamnya dan mencari tahu tempat jual gadget oke, hehe...",
      "place": "Yogyakarta, Indonesia",
      "image": "assets/images/travlog_yogyakarta.png"
    },
    {
      "name": "\"Tokyo!\"",
      "content":
          "Japan was such a dream and I worked really hard on this vlog, so I hope you enjoyed it! In this Travlog!",
      "place": "Tokyo, Japan",
      "image": "assets/images/travlog_tokyo.png"
    },
  ];
  var swiperGambar = [
    "assets/images/carousel_flight_discount.png",
    "assets/images/carousel_hotel_discount.png",
    "assets/images/carousel_covid_discount.png",
  ];
  var popularsData = [
    {
      "name": "Bali",
      "country": "Indonesia",
      "image": "assets/images/destination_bali.png"
    },
    {
      "name": "Paris",
      "country": "France",
      "image": "assets/images/destination_paris.png"
    },
    {
      "name": "Rome",
      "country": "Italy",
      "image": "assets/images/destination_rome.png"
    },
  ];

  Widget buildImage(String ImageName, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 2.0),
        child: Image.asset(
          ImageName,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: BackgroundColor,
        title: SvgPicture.asset("assets/svg/travelkuy_logo.svg"),
        elevation: 0,
      ),
      backgroundColor: BackgroundColor,
      bottomNavigationBar: BottomNavigationTravelkuy(),
      body: Container(
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 16.0, bottom: 12.0),
              child: Text(
                "Hi, Fathan This promo for you",
                style: TitleStyle,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: CarouselSlider.builder(
                      itemCount: swiperGambar.length,
                      itemBuilder: (context, index, realIndex) {
                        final ImagesSee = swiperGambar[index];
                        return buildImage(ImagesSee, index);
                      },
                      options: CarouselOptions(
                        viewportFraction: 1,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        onPageChanged: (index, reason) =>
                            setState(() => _current = index),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          AnimatedSmoothIndicator(
                            activeIndex: _current,
                            count: swiperGambar.length,
                            effect: WormEffect(
                              dotHeight: 6,
                              dotWidth: 6,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "More....",
                        style: MoreDiscountStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0, top: 24.0, bottom: 10),
              child: Text(
                "Let's Explore",
                style: TitleStyle,
              ),
            ),
            Container(
              height: 144,
              margin: EdgeInsets.only(left: 16.0, right: 16.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          padding: EdgeInsets.only(left: 16.0),
                          height: 64,
                          decoration: BoxDecoration(
                            color: FillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: BorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/svg/service_flight_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Flight",
                                      style: ServiceTitleStyle,
                                    ),
                                    Text(
                                      "Feel Freedom",
                                      style: ServiceSubStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          padding: EdgeInsets.only(left: 16.0),
                          height: 64,
                          decoration: BoxDecoration(
                            color: FillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: BorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/svg/service_train_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Train",
                                      style: ServiceTitleStyle,
                                    ),
                                    Text(
                                      "Intercity",
                                      style: ServiceSubStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          padding: EdgeInsets.only(left: 16.0),
                          height: 64,
                          decoration: BoxDecoration(
                            color: FillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: BorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/svg/service_hotel_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Hotel",
                                      style: ServiceTitleStyle,
                                    ),
                                    Text(
                                      "Take a break",
                                      style: ServiceSubStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(right: 8.0),
                          padding: EdgeInsets.only(left: 16.0),
                          height: 64,
                          decoration: BoxDecoration(
                            color: FillColor,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: BorderColor, width: 1),
                          ),
                          child: Row(
                            children: <Widget>[
                              SvgPicture.asset(
                                "assets/svg/service_car_rental_icon.svg",
                                fit: BoxFit.contain,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "Car",
                                      style: ServiceTitleStyle,
                                    ),
                                    Text(
                                      "Explore Wonderland",
                                      style: ServiceSubStyle,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // POPULAR DESTINATION WIDGET ----------
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 24.0,
                bottom: 10,
              ),
              child: Text(
                "Popular Destination",
                style: TitleStyle,
              ),
            ),
            Container(
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16, right: 16),
                itemCount: popularsData.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      height: 140,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: BorderColor, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 16),
                        child: Column(
                          children: [
                            Image.asset(
                              popularsData[index]["image"].toString(),
                              height: 74,
                            ),
                            Text(
                              popularsData[index]["name"].toString(),
                              style: PopularDestinationTitle,
                            ),
                            Text(
                              popularsData[index]["country"].toString(),
                              style: PopularDestinationSub,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.0,
                top: 24.0,
                bottom: 10,
              ),
              child: Text(
                "Travelog",
                style: TitleStyle,
              ),
            ),
            Container(
              height: 181,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 16),
                itemCount: travlogsData.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(right: 16),
                    width: 220,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 104,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                  image: AssetImage(
                                      travlogsData[index]["image"].toString()),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              child: SvgPicture.asset(
                                  "assets/svg/travlog_top_corner.svg"),
                              right: 0,
                            ),
                            Positioned(
                                top: 8,
                                right: 8,
                                child: SvgPicture.asset(
                                    "assets/svg/travelkuy_logo_white.svg")),
                            Positioned(
                                bottom: 0,
                                child: SvgPicture.asset(
                                    "assets/svg/travlog_bottom_gradient.svg")),
                            Positioned(
                              bottom: 8,
                              left: 8,
                              child: Text(
                                "Travlog " +
                                    travlogsData[index]["name"].toString(),
                                style: TravlogTitle,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          travlogsData[index]["content"].toString(),
                          maxLines: 3,
                          style: TravlogContent,
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          travlogsData[index]["place"].toString(),
                          style: TravlogPlace,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
