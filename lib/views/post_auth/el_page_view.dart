import 'package:e_learning_frontend/views/post_auth/el_page_view1.dart';
import 'package:e_learning_frontend/views/post_auth/el_page_view2.dart';
import 'package:e_learning_frontend/views/post_auth/el_page_view3.dart';
import 'package:e_learning_frontend/widgets/el_navbar.dart';
import 'package:flutter/material.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends State<MainPageView> {
  int _selectedIndex = 1;
  PageController pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: const [
          PageView1(),
          PageView2(),
          PageView3(),
        ],
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      bottomNavigationBar: ELNavBar(
        selectedIndex: _selectedIndex,
        controller: pageController,
      ),
    );
  }
}
