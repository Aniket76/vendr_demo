import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:vendr_demo/utils/colors_constants.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset (
                      'assets/profile_icon.png',
                      width: 44,
                    ),
                    const SizedBox(height: 4,),
                    const Text(
                      "Ellen Snel",
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset (
                  'assets/vendor_icon.png',
                  width: 20,
                  color: Colors.black,
                ),
                minLeadingWidth: 8,
                title: Row(
                  children: const [
                    Text(
                      "Vendors",
                    ),
                    SizedBox(width: 4,),
                    Text(
                      "11",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                trailing: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset (
                          'assets/add_icon.png',
                          width: 12,
                          color: secondaryColor,
                        ),
                        const SizedBox(width: 4,),
                        const Text(
                          "Vendor",
                          style: TextStyle(
                              color: secondaryColor
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset (
                  'assets/team_icon.png',
                  width: 20,
                  color: Colors.black,
                ),
                minLeadingWidth: 8,
                title: Row(
                  children: const [
                    Text(
                      "My Team",
                    ),
                    SizedBox(width: 4,),
                    Text(
                      "6",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                trailing: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset (
                          'assets/add_icon.png',
                          width: 12,
                          color: secondaryColor,
                        ),
                        const SizedBox(width: 4,),
                        const Text(
                          "Team-members",
                          style: TextStyle(
                              color: secondaryColor
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffBDBDBD),
                indent: 16,
              ),
              ListTile(
                leading: Image.asset (
                  'assets/bookmark_icon.png',
                  width: 20,
                  color: Colors.black,
                ),
                minLeadingWidth: 8,
                title: const Text(
                  "Bookmarks",
                ),
              ),
              ListTile(
                leading: Image.asset (
                  'assets/setting_icon.png',
                  width: 20,
                  color: Colors.black,
                ),
                minLeadingWidth: 8,
                title: const Text(
                  "Settings",
                ),
              ),
              ListTile(
                leading: Image.asset (
                  'assets/switch_icon.png',
                  width: 20,
                  color: Colors.black,
                ),
                minLeadingWidth: 8,
                title: const Text(
                  "Switch to Vendor",
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xffBDBDBD),
                indent: 16,
              ),
              ListTile(
                leading: Image.asset (
                  'assets/help_icon.png',
                  width: 20,
                  color: Colors.black,
                ),
                minLeadingWidth: 8,
                title: const Text(
                  "Help",
                ),
              ),
              ListTile(
                leading: Image.asset (
                  'assets/privacy_icon.png',
                  width: 20,
                  color: Colors.black,
                ),
                minLeadingWidth: 8,
                title: const Text(
                  "Privacy",
                ),
              ),
              ListTile(
                leading: Image.asset (
                  'assets/subscription_icon.png',
                  width: 20,
                  color: Colors.black,
                ),
                minLeadingWidth: 8,
                title: const Text(
                  "Subscription ",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
