import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_01/view/constants.dart';

class ReusableContainer extends StatelessWidget {
  final String name;
  final double pay;
  final String status;
  final String saman;
  final String date;
  final String profile;
  final  Color mycolor;
  const ReusableContainer({super.key,
  required this.name,
    required this.pay,
    required this.status,
    required this.saman,
    required this.date,
    required this.profile,
    required this.mycolor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container( height: 60,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Container(child: Row(children: [
              Container(height: 50,width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xffF1F2F7)
                ),
                child: Image(
                    image: AssetImage(profile)),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*.03,),
              Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,style: myNameStyle,),
                  Row(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(saman,style: mySamanTitleStyle,),
                      Text(date,style: mySamanTitleStyle,)
                    ],)
                ],),
            ],),),
            Column(children: [
              Text("\$ "+pay.toString(),style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18
              ),),
              Text(status,style: TextStyle(color: mycolor,fontSize: 12,fontWeight: FontWeight.w700),)
            ],),
          ],),
        ),
      ),
    );
  }
}
