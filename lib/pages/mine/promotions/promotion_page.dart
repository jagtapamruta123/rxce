import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxce/functions/check_internet.dart';
import 'package:rxce/pages/mine/promotions/tab_bar_body.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';
import 'package:rxce/widgets/custom_text_form_field.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class PromotionPage extends StatefulWidget {
  static String id = 'promotions';
  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage>
    with SingleTickerProviderStateMixin {
  List<String> menuItemName = [
    'Promotion Record',
    'Bonus Record',
    'Apply Record'
  ];
  TabController _tabController;
  ConnectivityStream stream = ConnectivityStream();

  @override
  void initState() {
    stream.getState((Val) {
      setState(() {});
    });
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);

    // print("Selected Index: " + _controller.index.toString());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: NoInternetCard(!ConnectivityStream.isInternet),
      appBar: AppBar(
        leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Promotions',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: PopupMenuButton(
              child: Icon(
                Icons.more_vert,
              ),
              itemBuilder: (context) {
                return List.generate(3, (index) {
                  return PopupMenuItem(
                    child: CustomTextWidget(
                      title: menuItemName[index],
                      fontSize: 15,
                      color: Colors.black,
                      letterSpecing: 0.5,
                      fontFamily: 'Archia',
                      fontWeight: FontWeight.normal,
                    ),
                  );
                });
              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 30, 15, 5),
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 500, minHeight: 100),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CustomTextWidget(
                    title: 'Bonus : ₹ 0',
                    fontSize: 24,
                    color: Colors.black,
                    letterSpecing: 1.5,
                    fontFamily: 'Archia',
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomFlatButtonWidget(
                  onTap: () {
                    _showMyDialog();
                  },
                  title: 'Apply to Balance',
                ),
                TabBar(
                  indicatorColor: Colors.green,
                  labelColor: Colors.black,
                  controller: _tabController,
                  onTap: (value) {},
                  tabs: [
                    Tab(
                      text: 'Level 1',
                    ),
                    Tab(
                      text: 'Level 2',
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    //dragStartBehavior: ,
                    physics: NeverScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      TabBarViewBody(),
                      TabBarViewBody(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _showMyDialog() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Apply To Balance'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                CustomTextFormField(
                  label: 'Bonus',
                ),
                SizedBox(
                  height: 35,
                ),
                FlatButton(
                  color: Theme.of(context).accentColor,
                  onPressed: () {},
                  child: CustomTextWidget(
                    title: 'Apply All',
                    fontSize: 15,
                    color: Colors.white,
                    letterSpecing: 1,
                    fontFamily: 'Archia',
                    // fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: CustomTextWidget(
                title: 'Cancel',
                fontSize: 15,
                color: Colors.grey,
                letterSpecing: 1,
                fontFamily: 'Archia',
                // fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: CustomTextWidget(
                title: 'Confirm',
                fontSize: 15,
                color: Colors.green,
                letterSpecing: 1,
                fontFamily: 'Archia',
                // fontWeight: FontWeight.bold,
              ),
              onPressed: () {
                //   Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
