import 'package:flutter/material.dart';

class ELNavBar extends StatefulWidget {
  final PageController controller;
  final int selectedIndex;

  const ELNavBar(
      {super.key, required this.controller, required this.selectedIndex});

  @override
  State<ELNavBar> createState() => _ELNavBarState();
}

class _ELNavBarState extends State<ELNavBar> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
        onDestinationSelected: (index) {
          widget.controller.animateToPage(index,
              duration: const Duration(milliseconds: 200),
              curve: Curves.linear);
        },
        selectedIndex: widget.selectedIndex,
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.question_mark_outlined), label: "??"),
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(
              icon: Icon(Icons.manage_accounts_outlined), label: "Account")
        ]);
  }
}
