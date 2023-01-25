import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppLayout.getHeight(100)),
                    color: Color(0xfffef4f3)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        decoration: BoxDecoration(
                     shape: BoxShape.circle,
                    color: Color(0xff526799)
                  ),
                  child: Icon(FluentSystemIcons.ic_fluent_shield_filled,
                         color: Colors.white,size: 15,
                  ),
                      ),
                      SizedBox(
                        width:5
                      ),
                      Text("Premium Status",style: TextStyle(
                        color: Color(0xff526799),fontWeight: FontWeight.w600
                      ),),
                      SizedBox(
                        width:5
                      ),
                      
                    ],
                  ),
                )
              ],
            )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Divider(color: Colors.grey.shade300,),
          SizedBox(
            height: 8,
          ),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width:double.infinity ,
                decoration: BoxDecoration(
                 color: Styles.primaryColor,
                 borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                                 ),
              ),
             Positioned(
              right: -45,
              top: -40,
              child:  Container(
                padding: EdgeInsets.all(AppLayout.getHeight(35)),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(width: 18,color: Color(0xff264cd2))
                ),
              ),
             
             ),
             Container(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(25),vertical: AppLayout.getHeight(20)),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                    color: Styles.primaryColor,size: 27,
                    ),
                    maxRadius:25,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    width: AppLayout.getHeight(12),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You have got a new award",
                        style: Styles.headlineStyle.copyWith(
                          fontWeight: FontWeight.bold,color: Colors.white,fontSize: 19
                        ),
                      ),
                       Text(
                        "You have 95 flights in a year",
                        style: Styles.headlineStyle.copyWith(
                          fontWeight: FontWeight.w500,color: Colors.white.withOpacity(0.9),fontSize: 16
                        ),
                      ),
                    ],
                  )
                ],
               ),
             )
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Accumulated miles",style: Styles.headlineStyle.copyWith(fontSize: 23),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(15)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
              color: Styles.bgColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 1,
                  spreadRadius: 1
                )
              ]
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Text("192802",
                style: TextStyle(
                  fontSize: 45,
                  color: Styles.textColor,
                  fontWeight: FontWeight.w600
                ),),
                 SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Miles accrued",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16,color: Colors.black),
                    ),
                    Text(
                      "25 Jan 2023",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16,color: Colors.black),
                    ),

                  ],
                ),
                SizedBox(
                 height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                          Text(
                      "23042",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16,color: Colors.black),
                    ),
                    Text(
                      "Miles",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                      
                      ],
                    ),
                    Column(
                      children: [
                          Text(
                      "Airline CD",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16,color: Colors.black),
                    ),
                    Text(
                      "Recieved From",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                      ],
                    )
                  ],
                ),
                    SizedBox(
                 height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                          Text(
                      "24",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16,color: Colors.black),
                    ),
                    Text(
                      "Miles",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                      
                      ],
                    ),
                    Column(
                      children: [
                          Text(
                      "Mac Donal's",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16,color: Colors.black),
                    ),
                    Text(
                      "Recieved From",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                      ],
                    )
                  ],
                ),
                    SizedBox(
                 height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                          Text(
                      "54340",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16,color: Colors.black),
                    ),
                    Text(
                      "Miles",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                      
                      ],
                    ),
                    Column(
                      children: [
                          Text(
                      "Exuma",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16,color: Colors.black),
                    ),
                    Text(
                      "Recieved From",
                      style: Styles.headlineStyle4.copyWith(fontSize: 16),
                    ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(30),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "How To Get More Miles",
                      style: Styles.headlineStyle3.copyWith(color: Colors.black)
                    )
                  ],
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}