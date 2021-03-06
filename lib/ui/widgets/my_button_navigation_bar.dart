import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:parcel_shipping_courier/ui/screens/home_screen.dart';
import 'package:parcel_shipping_courier/ui/screens/screens.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _selectedIndex = 0;

  List<Widget> pageList = <Widget>[
    HomeScreen(),
    SendParcelScreen(),
    SendParcelCheckoutScreen(),
    SendParcelDetailScreen(),
    ParcelCenterScreen(),
  ];

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: Theme.of(context).textTheme.headline5,
        unselectedLabelStyle: Theme.of(context).textTheme.headline5,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/images/icon_my_parcels.svg')
                  : SvgPicture.asset('assets/images/icon_my_parcels_grey.svg'),
              label: 'Home Screen'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/images/icon_send_parcel.svg')
                  : SvgPicture.asset('assets/images/icon_send_parcel_grey.svg'),
              label: 'Send parcel'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                  : SvgPicture.asset(
                      'assets/images/icon_parcel_center_grey.svg'),
              label: 'Parcel Checkout'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                  : SvgPicture.asset(
                      'assets/images/icon_parcel_center_grey.svg'),
              label: 'Detail'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 4
                  ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                  : SvgPicture.asset(
                      'assets/images/icon_parcel_center_grey.svg'),
              label: 'Parcel Center'),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
