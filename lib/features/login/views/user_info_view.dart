import 'package:e_chat/core/utils/app_color.dart';
import 'package:e_chat/features/chat/home_chat_view.dart';
import 'package:e_chat/features/login/views/widget/user_info_view_body.dart';
import 'package:flutter/material.dart';

class UserInfoView extends StatelessWidget {
  const UserInfoView({super.key});

  static const routeName = 'info';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: UserInfoViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamedAndRemoveUntil(context, HomeChatView.routeName, (route) => false);
        },
        backgroundColor: AppColors.primaryColor,
        foregroundColor: Colors.white,
        child: Icon(Icons.navigate_next),
      ),
    );
  }
}