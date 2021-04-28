import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

//import 'package:shared_preferences/shared_preferences.dart';

class CustomDrawerWidget extends StatefulWidget {
  // String userName;

  CustomDrawerWidget({
    //  this.userName = 'Amruta',
    Key key,
  }) : super(key: key);

  @override
  _CustomDrawerWidgetState createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  int _value = 6;
  int _value2 = 6;
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // elevation: 2,
      child: Container(
        color: Colors.teal[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 45,
              child: DrawerHeader(
                padding: EdgeInsets.fromLTRB(8, 8, 0, 0),
                margin: EdgeInsets.zero,
                decoration:
                    BoxDecoration(color: Colors.black.withOpacity(0.75)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 14,
                          backgroundColor: Colors.black.withOpacity(
                            0.9,
                          ),
                          child: Icon(
                            Icons.clear,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 8.5,
                    ),
                    Center(
                      child: CustomTextWidget(
                        title: 'Settings',
                        fontSize: 16,
                        color: Colors.white,
                        letterSpecing: 1,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 50),
              width: MediaQuery.of(context).size.width / 3.5,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomTextWidget(
                      title: 'BGM',
                      fontSize: 16,
                      color: Colors.white,
                      letterSpecing: 0.7,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w800,
                    ),
                    new Expanded(
                      child: Slider(
                        value: _value.toDouble(),
                        min: 1.0,
                        max: 20.0,
                        divisions: 10,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white,
                        //  label: 'Set volume value',
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                        semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()} dollars';
                        },
                      ),
                    ),
                  ]),
            ),
            Container(
              padding: EdgeInsets.only(left: 50),
              width: MediaQuery.of(context).size.width / 3.5,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomTextWidget(
                      title: 'SFX',
                      fontSize: 16,
                      color: Colors.white,
                      letterSpecing: 0.7,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                    new Expanded(
                      child: Slider(
                        value: _value.toDouble(),
                        min: 1.0,
                        max: 20.0,
                        divisions: 10,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white,
                        //  label: 'Set volume value',
                        onChanged: (double newValue) {
                          setState(() {
                            _value = newValue.round();
                          });
                        },
                        semanticFormatterCallback: (double newValue) {
                          return '${newValue.round()} dollars';
                        },
                      ),
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  Icon(
                    Icons.whatshot_outlined,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomTextWidget(
                    title: 'Contact Us',
                    fontSize: 16,
                    color: Colors.white,
                    letterSpecing: 0.7,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w800,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: FlatButton(
                minWidth: 150,
                color: Colors.red,
                onPressed: () {},
                child: CustomTextWidget(
                  title: 'Close App',
                  fontSize: 16,
                  color: Colors.white,
                  letterSpecing: 0.7,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: FlatButton(
                minWidth: 150,
                color: Colors.grey,
                onPressed: () {},
                child: CustomTextWidget(
                  title: 'Logout',
                  fontSize: 16,
                  color: Colors.white,
                  letterSpecing: 0.7,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Divider(
              thickness: 1,
              indent: 10,
              endIndent: 20,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CustomTextWidget(
                title: 'V1.0.0',
                fontSize: 16,
                color: Colors.white,
                letterSpecing: 0.7,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
