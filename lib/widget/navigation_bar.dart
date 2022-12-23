import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_travel_app/colors_and_font.dart';

class BottomNavigationTravelkuy extends StatefulWidget {
  const BottomNavigationTravelkuy({Key? key}) : super(key: key);

  @override
  _BottomNavigationTravelkuyState createState() =>
      _BottomNavigationTravelkuyState();
}

class _BottomNavigationTravelkuyState extends State<BottomNavigationTravelkuy> {
  int _selectedindex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
          color: FillColor,
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 15,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          )),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedindex == 0
                  ? new SvgPicture.asset("assets/icons/home_colored.svg")
                  : new SvgPicture.asset("assets/icons/home.svg"),
              title: Text(
                "Home",
                style: BottomTextStyle,
              )),
          BottomNavigationBarItem(
              icon: _selectedindex == 1
                  ? new SvgPicture.asset("assets/icons/order_colored.svg")
                  : new SvgPicture.asset("assets/icons/order.svg"),
              title: Text(
                "My Order",
                style: BottomTextStyle,
              )),
          BottomNavigationBarItem(
              icon: _selectedindex == 2
                  ? new SvgPicture.asset("assets/icons/watch_colored.svg")
                  : new SvgPicture.asset("assets/icons/watch.svg"),
              title: Text(
                "Watch List",
                style: BottomTextStyle,
              )),
          BottomNavigationBarItem(
              icon: _selectedindex == 3
                  ? new SvgPicture.asset("assets/icons/account_colored.svg")
                  : new SvgPicture.asset("assets/icons/account.svg"),
              title: Text(
                "My Account",
                style: BottomTextStyle,
              )),
        ],
        currentIndex: _selectedindex,
        selectedItemColor: Blue,
        unselectedItemColor: SubtitleColor,
        onTap: _onItemTapped,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showSelectedLabels: true,
        elevation: 0,
        // sampe menit ke 14
      ),
    );
  }
}
