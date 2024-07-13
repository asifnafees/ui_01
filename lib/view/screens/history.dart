import 'package:flutter/material.dart';
import 'package:ui_01/view/reusable_container.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    double horizontalPadding = screenWidth * 0.05; // 5% of screen width
    double verticalPadding = screenHeight * 0.06;
    return Scaffold(
      body: SingleChildScrollView(child:
        Column(children: [
          ReusableContainer(
            name: "Alexander Young",
            pay: 500,
            status: "Sent",
            saman: "Gloceries",
            date: "19 Feb,19",
            profile: "assets/images/asif.jpg",
            mycolor: Colors.blue,),
          ReusableContainer(
            name: "Lisa Moreno",
            pay: 2500,
            status: "Received",
            saman: "School fee",
            date: "02 Feb,19",
            profile: "assets/images/asif.jpg",
            mycolor: Colors.green,),
          ReusableContainer(
            name: "Anil Kumar",
            pay: 5000,
            status: "Received",
            saman: "Help",
            date: "19 March,19",
            profile: "assets/images/asif.jpg",
            mycolor: Colors.green,),
          ReusableContainer(
            name: "Asif Nafees",
            pay: 500,
            status: "Pending",
            saman: "Sim",
            date: "19 Feb,20",
            profile: "assets/images/asif.jpg",
            mycolor: Colors.orange,),
          ReusableContainer(
            name: "Satendra Sharma",
            pay: 500,
            status: "Failed",
            saman: "Rent",
            date: "19 Feb,23",
            profile: "assets/images/asif.jpg",
            mycolor: Colors.grey,),
        ],),)
    );
  }
}
