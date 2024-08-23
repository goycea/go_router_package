import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationBarView extends StatefulWidget {
  const NavigationBarView({super.key, required this.statefulNavigationShell});

  final StatefulNavigationShell statefulNavigationShell;

  @override
  State<NavigationBarView> createState() => _NavigationBarViewState();
}

class _NavigationBarViewState extends State<NavigationBarView> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = widget.statefulNavigationShell.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.statefulNavigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int page) {
          currentIndex = page;
          widget.statefulNavigationShell.goBranch(
            page,
            initialLocation:
                page == widget.statefulNavigationShell.currentIndex,
          );
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
        ],
      ),
    );
  }
}
