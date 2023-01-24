
import 'package:booking_app/screens/double_text_widget.dart';
import 'package:booking_app/screens/hotel_screen.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_info_list.dart';
import 'package:booking_app/utils/app_layout.dart';
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
                  height: AppLayout.getHeight(40),
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
                      height: AppLayout.getHeight(50),
                      width: AppLayout.getWidth(20),
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
                  height: AppLayout.getHeight(25),
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
                  height:AppLayout.getHeight(40) ,
                ),
                AppDoubleTextWidget(bigText: "Upcoming Flights", smalltext: "View All")
              ],
            ),
          ) ,
         SizedBox(height:AppLayout.getHeight(15),),
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children:ticketList.map((singleTicket) => TicketView(ticket:singleTicket)).toList(),
          ),
         ),
       SizedBox(
        height: AppLayout.getHeight(15),
       ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Hotels",style: Styles.headlineStyle,),
                    InkWell(
                      onTap: () {
                        print("hello");
                      },      
                      child: 
                    Text("View all",style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
                    ],
                  ),
        ),
        SizedBox(
          height: AppLayout.getHeight(15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
            
  
          ),
         ),
        ],
      ),
    );
  }
}