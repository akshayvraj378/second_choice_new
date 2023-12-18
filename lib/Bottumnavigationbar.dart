import 'package:flutter/material.dart';
import 'package:second_choice_new/screens/home.dart';
import 'package:second_choice_new/screens/homemain.dart';
import 'package:second_choice_new/screens/profilepage.dart';
import 'package:second_choice_new/screens/settings_page.dart';

class MoreThanThreeIcon extends StatefulWidget {
  const MoreThanThreeIcon({Key? key}) : super(key: key);

  @override
  _MoreThanThreeIconState createState() => _MoreThanThreeIconState();
}

class _MoreThanThreeIconState extends State<MoreThanThreeIcon> {
  final PageController _pageController = PageController(initialPage: 0);
  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        children: _buildThreePageViewChildren(),
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (int index) {
          setState(() {
            _pageIndex = index;
          });
        },
      ),
      bottomNavigationBar: _pageIndex == 0 || _pageIndex == 1 || _pageIndex == 2
          ? Padding(
        padding: const EdgeInsets.only(top: 14, left: 18, right: 18, bottom: 19),
        child: BottomNavigationBar(
          items: _buildThreeItems(),
          onTap: (int index) {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut,
            );
          },
          currentIndex: _pageIndex,
          fixedColor: Theme.of(context).highlightColor,
        ),
      )
          : null,
    );
  }

  List<Widget> _buildThreePageViewChildren() {
    return <Widget>[
      HomePage(),
      Seti(),
      Prof(),
    ];
  }

  List<BottomNavigationBarItem> _buildThreeItems() {
    return const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_box_outlined),
        label: 'Profile',
      ),
    ];
  }


}
