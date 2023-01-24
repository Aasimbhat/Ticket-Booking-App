import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
    final String smalltext;

  const AppDoubleTextWidget({Key? key,required this.bigText,required this.smalltext}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(bigText,style: Styles.headlineStyle,),
                  InkWell(
                    onTap: () {
                      print("hello");
                    },      
                    child: 
                  Text(smalltext,style: Styles.textStyle.copyWith(color: Styles.primaryColor)))
                  ],
                );
  }
}