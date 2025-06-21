import 'package:e_chat/core/utils/app_color.dart';
import 'package:e_chat/features/chat/views/home_chat_view.dart';
import 'package:e_chat/features/login/bloc/auth_bloc.dart';
import 'package:e_chat/features/login/views/otp_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if(state is AuthError){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message))
          );
        }else if(state is Authenticated){
          Future.delayed(Duration(seconds: 2), () {
            Navigator.pushReplacementNamed(context, HomeChatView.routeName); // Replace with your home route
          });
        }
      },
      builder: (context, state) {
        if (state is AuthLoading || state is Authenticated) {
          return const Center(child: CircularProgressIndicator());
        }
        return Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 6,
              child: Column(
                mainAxisSize: MainAxisSize.min, // Fit to content height
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    color: Color(0xffefebf7),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.primaryColor,
                          child: ImageIcon(
                            AssetImage('assets/images/Logo.png'),
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'Welcome to E-Chat',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'Sign in or create an account to continue',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        const SizedBox(height: 6),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        ElevatedButton.icon(
                          onPressed: () {
                            context.read<AuthBloc>().add(GoogleSignInRequested());
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: AppColors.secondaryColor
                                .withValues(alpha: 0.2),
                            foregroundColor: AppColors.blackColor,
                            minimumSize: Size(double.infinity, 48),
                            elevation: 0,
                            overlayColor: AppColors.secondaryColor,
                            shadowColor: Colors.transparent,
                          ),
                          icon: Icon(
                            Icons.g_mobiledata,
                            color: AppColors.blackColor,
                            size: 25,
                          ),
                          label: const Text("Sign in with Google"),
                        ),
                        const SizedBox(height: 12),
                        ElevatedButton.icon(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: AppColors.primaryColor,
                            foregroundColor: Colors.white,
                            minimumSize: Size(double.infinity, 48),
                          ),
                          icon: Icon(
                            Icons.facebook,
                            color: Colors.white,
                            size: 25,
                          ),
                          label: const Text("Sign in with Facebook"),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Expanded(child: Divider()),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8.0,
                              ),
                              child: Text(
                                'OR',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Expanded(child: Divider()),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Text(
                          'Phone Number',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: AppColors.blackColor,
                            ),
                            fillColor: AppColors.secondaryColor.withValues(alpha: 0.2,),
                            filled: true,
                            hintText: '+44 00 0000 0000',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.pushNamed(context, OtpView.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            backgroundColor: AppColors.primaryColor,
                            foregroundColor: Colors.white,
                            minimumSize: Size(double.infinity, 48),
                          ),
                          icon: Icon(Icons.send, color: Colors.white, size: 25),
                          label: const Text("Send OTP"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
