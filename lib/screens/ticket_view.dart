import 'package:booking_app/screens/thick_container.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatefulWidget {
  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xff526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(
                          child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                      (constraints.constrainWidth() / 6)
                                          .floor(),
                                      (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                                decoration: BoxDecoration(
                                                    color: Colors.white)),
                                          )),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(Icons.local_airport_rounded,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                      ThickContainer(),
                      Expanded(child: Container()),
                     
                      Text("LDN",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white))
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width:100,
                      child: Text("New-York",style: Styles.headlineStyle4.copyWith(color:Colors.white,
                      ),
                    ),
                    
                    ),
                    Text("8H 30M", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                        SizedBox(
                      width:100,
                      child: Text("London",textAlign: TextAlign.end, style: Styles.headlineStyle4.copyWith(color:Colors.white,
                      ),
                    ),
                    
                    ),
                  ],
                )
                ],
              ),
            ),
         
           
          ],
        ),
      ),
    );
  }
}
