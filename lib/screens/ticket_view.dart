
import 'package:booking_app/screens/thick_container.dart';
import 'package:booking_app/utils/app_info_list.dart';
import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:flutter/material.dart';

class TicketView extends StatefulWidget {

   final Map<String,dynamic>ticket;

  const TicketView({Key? key,required this.ticket,}) : super(key: key);
  @override
 
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.88,
      height: AppLayout.getHeight(200),
      child: Container(
        margin:  EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color:  Color(0xff526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding:  EdgeInsets.all(AppLayout.getHeight(16)),
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
                            height: AppLayout.getHeight(24),
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
                     
                      Text("NYC",
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
                      width:AppLayout.getWidth(100),
                      child: Text("New-York",style: Styles.headlineStyle4.copyWith(color:Colors.white,
                      ),
                    ),
                    
                    ),
                    Text("8H 30M", style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                        SizedBox(
                      width:AppLayout.getWidth(100),
                      child: Text("London",textAlign: TextAlign.end, style: Styles.headlineStyle4.copyWith(color:Colors.white,
                      ),
                    ),
                    
                    ),
                  ],
                )
                ],
              ),
            ),
           Container(
            color:Styles.orangeColor ,
           child: Row(
            children: [
              SizedBox(
                height: AppLayout.getHeight(20),
                width: AppLayout.getWidth(10),
                child: DecoratedBox(decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(AppLayout.getHeight(10)),
                    bottomRight: Radius.circular(AppLayout.getHeight(10))
                  )
                ),),
              ),
                Expanded(child:Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder (builder: (BuildContext context, BoxConstraints constraints) { 
                    return  Flex(
                      direction:Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate((constraints.constrainWidth()/15).floor(), (index) =>
                     const SizedBox(
                        width: 5,
                        height: 1,
                        child: DecoratedBox(
                          decoration:
                           BoxDecoration(
                            color: Colors.white
                  
                           ),),
                      )),
                      
                       );
                   },
                    
                  ),
                )
                  
                  ),
                SizedBox(
                height: AppLayout.getHeight(20),
                width: AppLayout.getWidth(20),
                child: DecoratedBox(decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppLayout.getHeight(10)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(10))
                  )
                ),),
              ),
            ],
           ),
           ),
           Container(
              decoration: BoxDecoration(
                  color:Styles.orangeColor ,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: const EdgeInsets.only(left: 16,top: 19,right: 16,bottom: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("1 MAY",
                        style: Styles.headlineStyle3.copyWith(color: Colors.white),
                        ),
                        SizedBox(
                          height: AppLayout.getHeight(5),
                        ),
                        Text("Date",
                        style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                      ],
                    ),
                      Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("8:00 AM",
                        style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                         SizedBox(
                          height: AppLayout.getHeight(5),
                        ),
                        Text("Departure Time",
                        style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("23",
                        style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                         SizedBox(
                          height: AppLayout.getHeight(5),
                        ),
                        Text("Number",
                        style: Styles.headlineStyle4.copyWith(color: Colors.white),)
                      ],
                    ),
                   
                  ],
                )
              ],
            ),
            
           )
          ],
        ),
      ),
    );
  }
}
