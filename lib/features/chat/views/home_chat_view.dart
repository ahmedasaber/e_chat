import 'package:e_chat/features/profile/views/profile_view_body.dart';
import 'package:e_chat/features/chat/views/widget/home_app_bar_body.dart';
import 'package:e_chat/features/chat/views/widget/home_bottom_navigation_bar.dart';
import 'package:e_chat/features/chat/views/widget/home_chat_view_body.dart';
import 'package:flutter/material.dart';


class HomeChatView extends StatefulWidget {
  const HomeChatView({super.key});

  static const routeName = 'home';

  @override
  State<HomeChatView> createState() => _HomeChatViewState();
}

class _HomeChatViewState extends State<HomeChatView> {
  int _currentIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  final List<Widget> _pages = [
    HomeChatViewBody(),
    ProfileViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBarBody(),
      body: _pages[_currentIndex],
      bottomNavigationBar: HomeBottomNavigationBar(
        currentIndex: _currentIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}