import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:e_library/helpers/colors.dart';
import 'package:e_library/helpers/page_layout/page_layout.dart';
import 'package:e_library/helpers/page_layout/text_formating.dart';

class Settings extends StatelessWidget {
  Settings();
  @override
  Widget build(BuildContext context) {
    return TabBarDemo();
  }
}

class TabBarDemo extends StatelessWidget {
  TabBarDemo();

  @override
  Widget build(BuildContext context) {
    return PageLayout(
        title: 'Settings',
        // noAppBar: true,
        navPop:false,
        fontSize:28.0,
        scaffoldPadding: 16.0,
        appBarElevation:1.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           
          
            SettingsTab(
                onpress: () {},
                iconColor: textColor,
                icon: "assets/icons/person.svg",
                title: "Profile"),
            SettingsTab(
                onpress: () {},
                iconColor: textColor,
                icon: "assets/icons/support.svg",
                title: "Help and support"),
            SettingsTab(
                onpress: () {},
                iconColor: textColor,
                icon: "assets/icons/lock.svg",
                title: "Privacy policy"),
            SettingsTab(
                onpress: () {},
                iconColor: textColor,
                icon: "assets/icons/terms.svg",
                title: "Terms of service"),
          ],
        ));
  }
}

class SettingsTab extends StatelessWidget {
  const SettingsTab(
      {Key? key,
      this.icon,
      this.iconColor = textColor,
      this.onpress,
      this.title})
      : super(key: key);
  final title, icon, iconColor, onpress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: SizedBox(
        height: 64.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Row(
            children: [
              SizedBox(
                child: SvgPicture.asset(
                  icon,
                  color: iconColor,
                ),
              ),
              const SizedBox(
                width: 24,
              ),
              Expanded(
                child: Text(
                  title,
                  style: textStyle(
                      color: iconColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
              iconColor == dangerColor
                  ? const Text("")
                  : const SizedBox(
                      child: Icon(Icons.chevron_right),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
