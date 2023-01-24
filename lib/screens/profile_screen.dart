import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class  ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getWidth(20)),
        children: [
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
          Row(
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                    image: AssetImage(
                  "assets/images/img_1.png"),
                  )
                ),
              ),
           SizedBox(
            width: 10,
           ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Book Tickets",style: Styles.headlineStyle,),
                Text("New-York",style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade500,
                  fontSize: 18
                ),),

              ],
            )
            ],
          )
        ],
      ),
    );
  }
}