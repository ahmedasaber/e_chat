import 'package:e_chat/features/login/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {

  @override
  void initState() {
    executeNavigate();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/Logo.png", scale: 2),
            SizedBox(width: 10),
            Text(
              'E-Chat',
              style: TextStyle(
                color: Color(0xff0f4888),
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: SvgPicture.asset('assets/images/Chat Round.svg'),
            ),
            Text(
              "Stay Connected\nStay Chatting",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff1565C0),
              ),
            ),
          ],
        ),
        Text(
          "version 1.0.0",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xff1565C0),
          ),
        ),
      ],
    );
  }
  void executeNavigate(){
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, LoginView.routeName);
    });
  }
}


