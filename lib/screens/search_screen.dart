import 'package:booking_app/screens/double_text_widget.dart';
import 'package:booking_app/screens/icon_text_widget.dart';
import 'package:booking_app/screens/ticket_tabs.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
          Text(
            "What are\n you looking for",
            style: Styles.headlineStyle
                .copyWith(fontSize: AppLayout.getHeight(35)),
          ),
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
        const  AppTicketTabs(firstTab: "Airline Tickets",secondTab: "Hotels",),
          SizedBox(
            height: AppLayout.getHeight(25),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Icon(
                  Icons.flight_takeoff_rounded,
                  color: Color(0xffbfc2df),
                ),
                SizedBox(
                  width: AppLayout.getWidth(20),
                ),
                Text(
                  "Departure",
                  style: Styles.textStyle.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(20),
          ),
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: "Arrival",
          ),
          SizedBox(
            height: AppLayout.getHeight(25),
          ),
          Container(
              padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Text(
                "Find Tickets",
                style: Styles.textStyle
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ))),
          SizedBox(
            height: AppLayout.getHeight(40),
          ),
          AppDoubleTextWidget(
              bigText: "Upcoming Flights", smalltext: "View All"),
          SizedBox(
            height: AppLayout.getHeight(15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(408),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1,
                      )
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(20)),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/sit.jpg"))),
                    ),
                    SizedBox(
                      height: AppLayout.getHeight(12),
                    ),
                    Text(
                      "20% discount on the early booking of this flight.Don't miss out this chance ",
                      style: Styles.headlineStyle3.copyWith(),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(180),

                    decoration: BoxDecoration(
                      color: Color(0xFF34AB8B8),
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getHeight(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Discount\nfor survey",
                        style: Styles.headlineStyle3.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                          SizedBox(
                      height: AppLayout.getHeight(10),
                    ),
                    Text("Take teh survey about our services and get discount",
                        style: Styles.headlineStyle3.copyWith(fontWeight: FontWeight.w500,color: Colors.white,fontSize: 18),
                        ),
                        
                      ],
                    ),
                  ),
                  Positioned(
                    right: -45,
                    top: -40,
                    child: 
                  Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,color: Color(0xFF189999)),
                            color: Colors.transparent
                          ),
                        ),
                  ),
                    ],
                  ),
                  SizedBox(
                      height: AppLayout.getHeight(15),
                    ),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(18)),
                      color: Color(0xffec6445),
                    ),
                    child: Column(
                      children: [
                        Text("Take Love",style: Styles.headlineStyle3.copyWith(color: Colors.white,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                        SizedBox(
                      height: AppLayout.getHeight(5),
                    ),
                    RichText(
                      text:TextSpan(

                      )
                    )
                      ],
                    ),
                  )

                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
