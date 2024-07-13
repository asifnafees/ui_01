import 'package:flutter/material.dart';

class ReusableColumn extends StatelessWidget {
  final String title;
  final IconData iconData;
  const ReusableColumn({super.key,
  required this.title,
  required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container( height: 60,width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white
        ),
        child: Icon(iconData,color: Color(0xffFEA678),),),
      SizedBox(height: MediaQuery.of(context).size.height*.03,),
      Text(title),
    ],);
  }
}
