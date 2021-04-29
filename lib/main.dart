import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rxce/pages/home_page.dart';
import 'package:rxce/pages/mine/bank_componants/add_bank_details.dart';
import 'package:rxce/pages/mine/bank_componants/bank_card_page.dart';
import 'package:rxce/pages/mine/orders/orders_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setEnabledSystemUIOverlays([]);
  //SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft]);
  runApp(MyApp());

  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rxce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.green,
      ),
      routes: {
        AddBankDetails.id: (context) => AddBankDetails(),
        BankCardPage.id: (context) => BankCardPage(),
        OrdersPage.id: (context) => OrdersPage()
      },
      home: MyHomePage(),
    );
  }
}
