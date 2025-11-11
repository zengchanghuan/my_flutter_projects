import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifiers.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: selectedPagesNotifier,
        builder: (context, selectedPage, child) {
          return NavigationBar(
            destinations: const [
              NavigationDestination(icon: Icon(Icons.home), label: 'home'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            ],
            onDestinationSelected: (int value) {
              selectedPagesNotifier.value = value;
            },
            selectedIndex: selectedPage, // ✅ 正确使用
          );
        });

    /*
    return  NavigationBar(
      destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onDestinationSelected: (int value) {
        setState(() {
          _selectedIndex = value;   // ✅ 正确赋值
        });
      },
      selectedIndex: _selectedIndex, // ✅ 正确使用
    );
    */
  }
}
