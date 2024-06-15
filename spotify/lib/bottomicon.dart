// ignore_for_file: depend_on_referenced_packages, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class BottomIcons extends StatelessWidget {
  final int selectedIconIndex;
  final Function(int) onIconTap;

  BottomIcons({
    required this.selectedIconIndex,
    required this.onIconTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Color.fromARGB(118, 0, 0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          BottomIcon(
            icon: OctIcons.home_24,
            selectedIcon: OctIcons.home_fill_24,
            text: 'Home',
            selected: selectedIconIndex == 0,
            onTap: () => onIconTap(0),
          ),
          BottomIcon(
            icon: OctIcons.search_16,
            selectedIcon: Bootstrap.search,
            text: 'Search',
            selected: selectedIconIndex == 1,
            onTap: () => onIconTap(1),
          ),
          BottomIcon(
            icon: EvaIcons.layers_outline,
            selectedIcon: EvaIcons.layers,
            text: 'Library',
            selected: selectedIconIndex == 2,
            onTap: () => onIconTap(2),
          ),
        ],
      ),
    );
  }
}

class BottomIcon extends StatelessWidget {
  final IconData icon;
  final IconData selectedIcon;
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const BottomIcon({
    required this.icon,
    required this.selectedIcon,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            selected ? selectedIcon : icon,
            color: selected ? Colors.white : Colors.grey,
            size: 26,
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(
              color: selected ? Colors.white : Colors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }
}
