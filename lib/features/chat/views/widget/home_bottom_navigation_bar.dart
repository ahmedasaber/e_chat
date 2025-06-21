import 'package:e_chat/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({super.key, required this.currentIndex, required this.onTabSelected});

  final int currentIndex;
  final ValueChanged<int> onTabSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withValues(alpha: 0.1),
            spreadRadius: 6,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavItem(
            SvgPicture.asset('assets/images/Chat Round Dots_Selected.svg'),
            SvgPicture.asset('assets/images/Chat Round Dots_UnSelected.svg'),
            'Chat',
            0,
          ),
          buildNavItem(
            SvgPicture.asset('assets/images/User Circle_Selected.svg'),
            SvgPicture.asset('assets/images/User Circle_UnSelected.svg'),
            'Profile',
            1,
          ),
        ],
      ),
    );
  }

  Widget buildNavItem(SvgPicture selectedIcon, SvgPicture unSelectedIcon, String label, int index,) {
    final bool isSelected = currentIndex == index;
    return GestureDetector(
      onTap: () => onTabSelected(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(
          horizontal: isSelected ? 22 : 8,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: isSelected ? AppColors.secondaryColor : Colors.transparent,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [AppColors.secondaryColor, Color(0xff03a9f4)],
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            isSelected ? selectedIcon : unSelectedIcon,
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.grey[600],
                fontSize: 12,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
