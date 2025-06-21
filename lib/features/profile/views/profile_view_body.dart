import 'package:e_chat/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 90,
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=2'),
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration:BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit, color: Colors.white,),
                    ),
                  )
                )
              ],
            ),
          ),
          SizedBox(height: 32,),
          Center(child: Text('John Lennon', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),)),
          SizedBox(height: 32,),
          Row(
            children: [
              Text('Phone:  ', style: TextStyle(color:Color(0xff686A8A),fontSize: 16),),
              Text('(+44)  20 1234 5689', style: TextStyle(fontSize: 16),),
            ],
          ),
          Row(
            children: [
              Text('Gender : :  ', style: TextStyle(color:Color(0xff686A8A),fontSize: 16),),
              Text('Male', style: TextStyle(fontSize: 16),),
            ],
          ),
          Row(
            children: [
              Text('Birthday:  ', style: TextStyle(color:Color(0xff686A8A),fontSize: 16),),
              Text('12/01/1997', style: TextStyle(fontSize: 16),),
            ],
          ),
          Row(
            children: [
              Text('Email:  ', style: TextStyle(color:Color(0xff686A8A),fontSize: 16),),
              Text('john.lennon@mail.com', style: TextStyle(fontSize: 16),),
            ],
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton.icon(
              onPressed: (){},
              label: Text('Edit Profile', style: TextStyle(color:Colors.white, fontSize: 16),),
              icon: Icon(Icons.edit_outlined, color: Colors.white),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton.icon(
              onPressed: (){

              },
              label: Text('Logout', style: TextStyle(color:Colors.red, fontSize: 16),),
              icon: Icon(Icons.logout_outlined, color: Colors.red),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red[50],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                ),
                overlayColor: Colors.red
              ),
            ),
          ),
        ],
      ),
    );
  }
}