import 'package:booking_app/utils/app_layout.dart';
import 'package:flutter/material.dart';

class  AppTicketTabs extends StatelessWidget {
 final String firstTab;
  final String secondTab;

  const AppTicketTabs({Key? key,required this.firstTab,required this.secondTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size  =AppLayout.getSize(context);
    return FittedBox(
            child: Container(
              padding: EdgeInsets.all(3.5),
              child: Row(
                children: [
                  //ailine tickets
                  Container(
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.white),
                    child: Center(child: Text(firstTab)),
                  ),
                  //hotls
                  Container(
                    width: size.width * .44,
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                            right: Radius.circular(AppLayout.getHeight(50))),
                        color: Colors.transparent),
                    child: Center(child: Text(secondTab)),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    AppLayout.getHeight(50),
                  ),
                  color: Color(0xfff4f6fd)),
            ),
          );
  }
}