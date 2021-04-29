import 'package:flutter/material.dart';
import 'package:rxce/pages/mine/mine_page.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class MyNavigationBar extends StatefulWidget {
  MyNavigationBar({Key key}) : super(key: key);
  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static const List<Widget> _options = <Widget>[
    Text(
      'Home Screen',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Profile Screen',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    MinePage()
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _options.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.gamepad,
                size: 25,
              ),
              label: 'Home',
              //  title: Text(''),
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              // ignore: deprecated_member_use
              // title:Text('data'),
              icon: Icon(
                Icons.perm_media_outlined,
                size: 25,
              ),
              label: 'Period',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline_outlined,
                size: 25,
                // color: Colors.green,
              ),
              label: 'Mine',
              backgroundColor: Colors.white,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.grey,
          iconSize: 40,
          onTap: _onItemTap,
          elevation: 5),
    );
  }
}
