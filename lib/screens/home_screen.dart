import 'package:flutter/material.dart';
import 'package:vendr_demo/screens/tabs/showroom_tab.dart';
import 'package:vendr_demo/screens/tabs/vendors_tab.dart';
import 'package:vendr_demo/utils/colors_constants.dart';
import 'package:vendr_demo/widgets/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String title = 'My Vendors';
  final PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
          child: Image.asset(
            'assets/menu_icon.png',
            width: 120,
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(_selectedIndex == 0 ? 'Add Vendors' : 'Add Showroom'),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                'assets/add_icon.png',
                width: 20,
              ),
            ),
          ),
        ],
      ),
      drawer: NavigationDrawer(),
      extendBody: true,
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          VendorsScreen(),
          ShowroomScreen(),
        ],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
            if (page == 0) {
              title = 'My Vendors';
            } else {
              title = 'Showrooms';
            }
          });
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 50,
          child: Row(
            children: <Widget>[
              Expanded(
                child: InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/vendor_icon.png',
                        height: 22,
                        color: _selectedIndex == 0 ? secondaryColor : Colors.grey,
                      ),
                      Text(
                        'Vendors',
                        style: TextStyle(
                            color: _selectedIndex == 0 ? secondaryColor : Colors.grey,
                          fontSize: 10
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _selectedIndex = 0;
                      title = 'My Vendors';
                      _pageController.animateToPage(0,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease);
                    });
                  },
                ),
              ),
              Expanded(
                child: InkWell(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/showroom_icon.png',
                        height: 26,
                        color: _selectedIndex == 1 ? secondaryColor : Colors.grey,
                      ),
                      Text(
                        'Showrooms',
                        style: TextStyle(
                          color: _selectedIndex == 1 ? secondaryColor : Colors.grey,
                            fontSize: 10
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                      title = 'Showrooms';
                      _pageController.animateToPage(1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease);
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        color: offWhiteColor,
      ),
    );
  }
}
