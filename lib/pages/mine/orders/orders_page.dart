import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_text_widget.dart';

class OrdersPage extends StatefulWidget {
  static String id = 'orders';
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build throw UnimplementedError();

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 25,
          title: CustomTextWidget(
            title: 'Orders',
            fontSize: 20,
            color: Colors.white,
            letterSpecing: 1.5,
            fontFamily: 'Archia',
            fontWeight: FontWeight.bold,
          ),
          bottom: TabBar(tabs: [
            Tab(
              child: CustomTextWidget(
                title: 'ALL',
                fontSize: 12,
                color: Colors.white,
                letterSpecing: 0.5,
                fontFamily: 'Poppins',
                // fontWeight: FontWeight.bold,
              ),
            ),
            Tab(
              child: CustomTextWidget(
                title: 'UNDELIVER',
                fontSize: 12,
                color: Colors.white,
                letterSpecing: 0.2,
                fontFamily: 'Poppins',
                // /  fontWeight: FontWeight.w800,
              ),
            ),
            Tab(
              child: CustomTextWidget(
                title: 'UNRECEIVER',
                fontSize: 10,
                color: Colors.white,
                letterSpecing: 0.2,
                fontFamily: 'Poppins',
                // fontWeight: FontWeight.w800,
              ),
            ),
            Tab(
              child: CustomTextWidget(
                title: 'SUCCESS',
                fontSize: 12,
                color: Colors.white,
                letterSpecing: 1,
                fontFamily: 'Poppins',
                // fontWeight: FontWeight.bold,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
