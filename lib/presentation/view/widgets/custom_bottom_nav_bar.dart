import 'package:dropme/core/theming/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.selectedIndex, required this.onTap});

  final int selectedIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 16),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: ColorsManager.lightGray,
              blurRadius: 8,
              offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BuildNavItem(
                icon: Icons.qr_code,
                index: 0, 
                isSelected: selectedIndex == 0, 
                onTap: onTap
              ),
              BuildNavItem(
                icon: Icons.card_giftcard,
                index: 1,
                isSelected: selectedIndex == 1,
                onTap: onTap
              )
            ],
          ),
        ),
    );
  }
}


class BuildNavItem extends StatelessWidget {
  const BuildNavItem({
    super.key, 
    required this.icon, 
    required this.index,
    required this.isSelected, 
    required this.onTap});

  final IconData icon;
  final int index;
  final bool isSelected;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(index),
      child: Icon(
        icon,
        color: isSelected ? ColorsManager.mainColor : Colors.grey,
        size: 28,
      ),
    );
  }
}
