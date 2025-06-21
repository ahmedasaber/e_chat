import 'package:flutter/material.dart';
import 'package:e_chat/core/utils/app_color.dart';
import 'package:e_chat/features/login/bloc/auth_bloc.dart';
import 'package:e_chat/features/login/views/login_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBarBody extends StatelessWidget implements PreferredSize{
  const HomeAppBarBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          SvgPicture.asset('assets/images/Logo E-Chat.svg'),
          Text(
            'E-Chat',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
          ),
        ],
      ),
      backgroundColor: AppColors.primaryColor,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30)
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.6, 0.9],
            colors: [AppColors.primaryColor, Color(0xFF4484cd),]
          )
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            context.read<AuthBloc>().add(GoogleSignOutRequested());
            Navigator.pushNamedAndRemoveUntil(
              context,
              LoginView.routeName,
                  (route) => false,
            );
          },
          icon: Icon(Icons.logout, color: Colors.white),
        ),
        SizedBox(width: 10),
      ],
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}