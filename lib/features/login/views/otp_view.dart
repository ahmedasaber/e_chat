import 'package:e_chat/features/login/views/widget/otp_view_body.dart';
import 'package:flutter/material.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  static const routeName = 'otp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpViewBody(),
    );
  }
}