import 'package:e_chat/core/helper/on_generate_routes.dart';
import 'package:e_chat/core/utils/app_color.dart';
import 'package:e_chat/data/repositories/auth-repo/auth-repository.dart';
import 'package:e_chat/features/login/bloc/auth_bloc.dart';
import 'package:e_chat/features/splash/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AuthRepository authRepo = AuthRepository();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(authRepo),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: onGenerateRoute,
        initialRoute: SplashView.routeName,

        theme: ThemeData(
          fontFamily: 'Roboto',
          textSelectionTheme: TextSelectionThemeData(
            cursorColor: AppColors.primaryColor,
            selectionHandleColor: AppColors.primaryColor,
            selectionColor: AppColors.primaryColor.withValues(alpha: 0.2)
          ),
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColors.primaryColor,
            primary: AppColors.primaryColor,
            secondary: AppColors.secondaryColor
          ),
          scaffoldBackgroundColor: Colors.white
        ),
      ),
    );
  }
}