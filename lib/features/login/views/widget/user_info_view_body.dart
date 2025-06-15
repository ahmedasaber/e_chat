import 'package:e_chat/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class UserInfoViewBody extends StatelessWidget {
  const UserInfoViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none, // that make the picture over stack
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: const BoxDecoration(
                color: Color(0xFF40C4FF),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(24),
                  bottomRight: Radius.circular(24),
                ),
              ),
            ),
            // Profile Picture with Edit Icon
            Positioned(
              bottom: -50,
              left: MediaQuery.of(context).size.width / 2 - 50,
              child: Stack(
                children: [
                  // Circle Avatar
                  GestureDetector(
                    onTap:(){
                      
                    },
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        'https://i.pravatar.cc/150?img=3', // Replace with your asset or FileImage
                      ),
                    ),
                  ),
                  // Edit Icon
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Icon(Icons.edit, size: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 100), // Push content below the avatar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.person, color:AppColors.blackColor,),
              fillColor: AppColors.secondaryColor.withOpacity(0.2,),
              filled: true,
              hintText: 'Your Name',
              hintStyle: TextStyle(color: Colors.grey),
            ),
            keyboardType: TextInputType.name,
          ),
        ),
      ],
    );
  }
}