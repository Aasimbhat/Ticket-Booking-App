import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const AppIconText({Key? key,required this.icon,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
            padding: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              children: [
                Icon(icon,color: Color(0xffbfc2df),),
                SizedBox(
            width: AppLayout.getWidth(20),
          ),
                Text(text,style: Styles.textStyle.copyWith(fontWeight: FontWeight.bold),)
              ],
            ),
          );
  }
}