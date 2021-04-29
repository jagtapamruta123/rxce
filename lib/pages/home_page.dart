import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:rxce/app_drawer.dart';
import 'package:rxce/pages/navigation_page.dart';
import 'package:rxce/pages/persistant_nav_bar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey,
      // endDrawer: Drawer(),
      // endDrawer: CustomDrawerWidget(),

      // drawer: ,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent.withOpacity(0.1),
      //   flexibleSpace: Container(
      //     decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //         begin: Alignment.topCenter,
      //         end: Alignment.bottomCenter,
      //         stops: [
      //           0.4,
      //           0.9,
      //         ],
      //         colors: <Color>[
      //           Color.fromRGBO(139, 0, 139, 1),
      //           //  Colors.white,
      //           Color.fromRGBO(75, 0, 130, 1)
      //         ],
      //       ),
      //     ),
      //   ),

      //   actions: [
      //     IconButton(
      //       icon: Icon(
      //         Icons.settings,
      //         size: 30,
      //         color: Colors.yellow,
      //       ),
      //       onPressed: () {
      //         // _scaffoldKey.currentState.openEndDrawer();
      //       },
      //     )
      //   ],
      //   //backgroundColor: Color.fromRGBO(138, 43, 226, 2),
      //   automaticallyImplyLeading: true,

      //   title: Padding(
      //     padding: const EdgeInsets.only(top: 5),
      //     child: Row(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Padding(
      //           padding: const EdgeInsets.only(top: 5),
      //           child: CircleAvatar(
      //             radius: 25,
      //             backgroundImage: NetworkImage(
      //                 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTURfGYYEJtJfA0jM18n8eg-wZGT3bWCJrLFQ&usqp=CAU'),
      //           ),
      //         ),
      //         // Image.network(
      //         //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTURfGYYEJtJfA0jM18n8eg-wZGT3bWCJrLFQ&usqp=CAU",
      //         //   //  fit: BoxFit.cover,
      //         // ),
      //         SizedBox(
      //           width: 10,
      //         ),
      //         Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           children: [
      //             Text(
      //               'Member euihfued',
      //               overflow: TextOverflow.ellipsis,
      //               style: TextStyle(
      //                   fontFamily: 'Archia',
      //                   fontWeight: FontWeight.w800,
      //                   letterSpacing: 0.4),
      //             ),
      //             Text(
      //               'ID : 7845896',
      //               overflow: TextOverflow.ellipsis,
      //               style: TextStyle(
      //                   letterSpacing: 0.5,
      //                   fontFamily: 'Archia',
      //                   fontWeight: FontWeight.w600,
      //                   color: Colors.grey.withOpacity(0.7)),
      //             ),
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),

      body: ProvidedStylesExample(),
    );
  }
}
