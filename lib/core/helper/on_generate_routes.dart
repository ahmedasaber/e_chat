import 'package:e_chat/features/chat/home_chat_view.dart';
import 'package:e_chat/features/login/views/login_view.dart';
import 'package:e_chat/features/login/views/otp_view.dart';
import 'package:e_chat/features/login/views/user_info_view.dart';
import 'package:e_chat/features/splah/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<void> onGenerateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context)=> SplashView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context)=> LoginView());
    case OtpView.routeName:
      return MaterialPageRoute(builder: (context)=> OtpView());
    case UserInfoView.routeName:
      return MaterialPageRoute(builder: (context)=> UserInfoView());
    case HomeChatView.routeName:
      return MaterialPageRoute(builder: (context)=> HomeChatView());
    default:
      return MaterialPageRoute(builder: (context)=> Scaffold());
  }
}