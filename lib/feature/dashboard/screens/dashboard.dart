import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:e_library/feature/blog/screens/blog.dart';
import 'package:e_library/feature/catch-up/screens/catch_up.dart';
import 'package:e_library/feature/dashboard/screens/home.dart';
import 'package:e_library/feature/reels/screens/reels.dart';
import 'package:e_library/feature/settings/screens/settings.dart';
import 'package:e_library/helpers/colors.dart';
import 'package:e_library/helpers/page_layout/text_formating.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  List<Widget> currentRender = [
    Home(),
    CatchUp(),
    Blog(),
    Settings(),
  ];

  Widget build(
    BuildContext context,
  ) {
    double displayWidth = MediaQuery.of(context).size.width;
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    Color fadeGrey = Color(0xffC1C9C6);

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFFF8F8F8),
          currentIndex: _currentIndex,
          elevation: 8,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
          unselectedItemColor: Colors.grey,
          selectedItemColor: textColor,
          unselectedLabelStyle: textStyle(fontSize: 10.0),
          selectedLabelStyle: textStyle(fontSize: 10.0),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  listOfIcons[0],
                  height: 21.77,
                  // color: _currentIndex == 1 ? primaryColor : fadeGrey,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  listOfIcons[1],
                  height: 21.77,
                  // color: _currentIndex == 1 ? primaryColor : fadeGrey,
                ),
                label: 'Courses'),
           
            BottomNavigationBarItem(
                icon: Image.asset(
                  listOfIcons[2],
                  height: 21.77,
                  // color: _currentIndex == 1 ? primaryColor : fadeGrey,
                ),
                label: 'Books'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  listOfIcons[3],
                  height: 21.77,
                  // color: _currentIndex == 1 ? primaryColor : fadeGrey,
                ),
                label: 'Settings'),

            // BottomNavigationBarItem(
            //     icon:Icon(Icons.home),
            //     label: 'Notifications'),
            // BottomNavigationBarItem(
            //     icon:Icon(Icons.home),
            //     label: 'Account'),
          ],
        ),
        body: Container(
          child: IndexedStack(
              index: _currentIndex, children: <Widget>[...currentRender]),
        )
        // )

        );
  }

  List listOfIcons = [
    "assets/dashboard/nav/1.png",
    "assets/dashboard/nav/2.png",
    "assets/dashboard/nav/4.png",
    "assets/dashboard/nav/5.png",
  ];
}
