import 'package:flutter/material.dart';
import 'package:ui_01/view/constants.dart';
import 'package:ui_01/view/reusable_column.dart';
import 'package:ui_01/view/reusable_container.dart';
import 'package:ui_01/view/screens/history.dart';
import 'package:ui_01/view/screens/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth=MediaQuery.of(context).size.width;
    double screenHeight=MediaQuery.of(context).size.height;
    double horizontalPadding = screenWidth * 0.05; // 5% of screen width
    double verticalPadding = screenHeight * 0.06;
    return Scaffold( backgroundColor: Color(0xffF1F2F7),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MediaQuery.of(context).size.height*.4), // Set the custom height
        child: AppBar(backgroundColor: Color(0xff2931A5),
          flexibleSpace: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: verticalPadding,
                  horizontal: horizontalPadding),
              child: Column(children: [
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column( crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hey James',
                          style: myTitleStyle,
                        ),
                        Text('What would you like to do today ?',style: mySubTitleStyle,)
                      ],),
                    CircleAvatar(backgroundImage: AssetImage("assets/images/asif.jpg"),)
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.09,),
                Container( height: MediaQuery.of(context).size.height*.095,
              decoration: BoxDecoration(
              color: Color(0xff3845C9),
              borderRadius: BorderRadius.circular(50)
            ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('Receive',style: TextStyle(color: ReceiveSendButtonText),),
                    Container(decoration: BoxDecoration(
                        color: Colors.white
                        ,borderRadius: BorderRadius.circular(100)
                    ),
                      child:  IconButton(
                      icon: Icon(Icons.swap_horiz,color: Colors.blue,),
                      onPressed: () {
                        // Add your swap action here
                      },
                    ),),
                    Text('Send',style: TextStyle(color: ReceiveSendButtonText),),
                  ],
                ),
              )
              ],)
            ),
          ),
         
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: <Widget>[
         //homepage hero
          Home(),
          History(),
          Center(child: Text('Message Page')),
          Center(child: Text('More Page')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor:  Color(0xff2931A5),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
