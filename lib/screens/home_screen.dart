
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                           Text("Good Morning",style: Styles.headlineStyle3,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                     Text("Book Tickets",style: Styles.headlineStyle,
                    ),
                    ],
                   ),

                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                           "assets/images/img_1.png"
                          ),
                        )
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xfff4f6fd)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,color: Colors.blueGrey),
                      Text("Search",style: Styles.headlineStyle4,)
                    ],
                  ),
                ),
                SizedBox(
                  height:40 ,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Upcoming Flight",style: Styles.headlineStyle,),
                  InkWell(
                    onTap: () {
                      print("hello");
                    },      
                    child: 
                  Text("View all",style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
                  ],
                )
              ],
            ),
          ) ,
         SizedBox(height: 15,),
         TicketView(),
        ],
      ),
    );
  }
}