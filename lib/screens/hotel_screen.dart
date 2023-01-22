import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatelessWidget {
  final Map<String,dynamic> hotel;

  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
       margin: const EdgeInsets.only(right: 17,top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 5,
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                "assets/images/${hotel['image']}"
              ))
            ),
          ),
          SizedBox(
            height: AppLayout.getHeight(10),
          ),
          Text(
            hotel['place'],
            style: Styles.headlineStyle3.copyWith(color:Styles.bgColor),
          ),
          SizedBox(
            height: AppLayout.getHeight(5),
          ),
            Text(
            hotel['destination'],
            
            style: Styles.headlineStyle3.copyWith(color:Colors.white),
          ),
          SizedBox(
            height: AppLayout.getHeight(8),
          ),
            Text(
            '\$${
            hotel['price']}/night',
            style: Styles.headlineStyle.copyWith(color:Colors.white),
          ),

        ],
      ),
    );
  }
}