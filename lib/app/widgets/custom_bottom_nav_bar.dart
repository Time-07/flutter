import 'package:flutter/material.dart';
import 'package:trans_app/app/widgets/custom_bottom_nav_item.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.page,
  }) : super(key: key);

  final ValueNotifier<int> page;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  void initState() {
    widget.page.value = 0;
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      widget.page.value = index;
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
              icon: const Icon(Icons.help),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              label: 'Sobre',
              activeIcon: const CustomBottomNavItem(icon: Icons.help)),
        ],
        currentIndex: widget.page.value,
        onTap: _onItemTapped,
      ),
    );
  }
}
