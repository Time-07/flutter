import 'package:flutter/material.dart';
import 'package:trans_app/app/widgets/custom_bottom_nav_item.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: const Icon(Icons.person_search_rounded),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              label: 'Profissionais',
              activeIcon:
                  const CustomBottomNavItem(icon: Icons.person_search_rounded)),
          BottomNavigationBarItem(
              icon: const Icon(Icons.difference_outlined),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              label: 'Saúde',
              activeIcon:
                  const CustomBottomNavItem(icon: Icons.difference_outlined)),
          BottomNavigationBarItem(
              icon: const Icon(Icons.help),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              label: 'Sobre',
              activeIcon: const CustomBottomNavItem(icon: Icons.help)),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
