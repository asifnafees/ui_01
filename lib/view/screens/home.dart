import 'package:flutter/material.dart';
import 'package:ui_01/view/reusable_column.dart';
import 'package:ui_01/view/reusable_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    double horizontalPadding = screenWidth * 0.05; // 5% of screen width
    double verticalPadding = screenHeight * 0.06;
    return Scaffold(
      body:  SingleChildScrollView(child:
      Padding(
        padding:  EdgeInsets.symmetric(
            horizontal: horizontalPadding),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*.03),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ReusableColumn(title: "Pay Bills",
                      iconData: Icons.payment_outlined),
                  ReusableColumn(title: "Donate",
                      iconData: Icons.favorite_border),
                  ReusableColumn(title: "Recipients",
                      iconData: Icons.group_remove_outlined),
                  ReusableColumn(title: "Offers",
                      iconData: Icons.local_offer_outlined)
                ],),
            ),
            Text('Recent Transactions'.toUpperCase(),
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700
                  ,color: Colors.black.withOpacity(.5)),),
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

          ],),
      ),),
    );
  }
}
