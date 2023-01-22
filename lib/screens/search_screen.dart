import 'package:booking_app/screens/icon_text_widget.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return  Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          SizedBox(
            height: AppLayout.getHeight(40),         
          ),
          Text("What are\n you looking for",style: Styles.headlineStyle.copyWith(fontSize: AppLayout.getHeight(35)),),
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
          Container(
            padding: EdgeInsets.all(3.5),
            child: Row(
              children: [
                //ailine tickets
                Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal( left: Radius.circular(AppLayout.getHeight(50))
              
              ),
              color: Colors.white
            ),
            child: Center(child: Text("Airline Tickets")),
                ),
              //hotls
              Container(
              width: size.width*.44,
              padding: EdgeInsets.symmetric(vertical:  AppLayout.getHeight(7)),
                decoration: BoxDecoration(
              borderRadius: BorderRadius.horizontal( right: Radius.circular(AppLayout.getHeight(50))
              
              ),
              color: Colors.transparent
            ),
            child: Center(child: Text("Hotels")),
                ),

              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(50),
              
              ),
              color: Color(0xfff4f6fd)
            ),

          ),
          SizedBox(
            height: AppLayout.getHeight(25),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Icon(Icons.flight_takeoff_rounded,color: Color(0xffbfc2df),),
                SizedBox(
            width: AppLayout.getWidth(20),
          ),
                Text("Departure",style: Styles.textStyle.copyWith(fontWeight: FontWeight.bold),)
              ],
            ),
          ),
               SizedBox(
            height: AppLayout.getHeight(20),
          ),  
          const AppIconText(icon: Icons.flight_land_rounded,text: "Arrival",),
             SizedBox(
            height: AppLayout.getHeight(25),
          ),  
         Container(
            padding: EdgeInsets.symmetric(vertical: 18,horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.blue[900],

              borderRadius: BorderRadius.circular(10)
            ),
            child:Center(
              child:
               Text("Find Tickets",style: Styles.textStyle.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white),))

          ),
        ],
      ),
    );
  }
} 