import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:rxce/pages/mine/about_page/privacy_policy_page.dart';
import 'package:rxce/pages/mine/account_security/reset_password_page.dart';
import 'package:rxce/pages/mine/address/add_address_page.dart';
import 'package:rxce/pages/mine/address/address_page.dart';
import 'package:rxce/pages/mine/complaines_and_suggestions/complains_and_suggestions_page.dart';
import 'package:rxce/pages/mine/mine_page.dart';
import 'package:rxce/pages/mine/orders/orders_page.dart';
import 'package:rxce/pages/mine/promotions/promotion_page.dart';
import 'package:rxce/pages/mine/wallet/reacharge_page.dart';
import 'package:rxce/pages/mine/wallet/transactions_page.dart';
import 'package:rxce/pages/mine/wallet/withdral_page.dart';
import 'package:rxce/pages/period/my_parity_record_page.dart';
import 'package:rxce/pages/period/parity_record_page.dart';
import 'package:rxce/pages/period/period_home_page.dart';

import 'mine/about_page/risk_disclosure_agreement_page.dart';
import 'mine/bank_componants/add_bank_details.dart';
import 'mine/bank_componants/bank_card_page.dart';
import 'mine/complaines_and_suggestions/add_complains_suggestion.dart';

class ProvidedStylesExample extends StatefulWidget {
  final BuildContext menuScreenContext;
  ProvidedStylesExample({Key key, this.menuScreenContext}) : super(key: key);

  @override
  _ProvidedStylesExampleState createState() => _ProvidedStylesExampleState();
}

class _ProvidedStylesExampleState extends State<ProvidedStylesExample> {
  PersistentTabController _controller;
  bool _hideNavBar;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
    _hideNavBar = false;
  }

  List<Widget> _buildScreens() {
    return [
      Container(
        child: Center(
          child: Text(
            'Home Screen',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      PeriodHomePage(),
      MinePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.gamepad,
          size: 25,
        ),
        title: "Home",
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
        // inactiveColorSecondary: Colors.purple,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.perm_media_outlined,
          size: 25,
        ),
        title: ('Period'),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: PeriodHomePage.id,
          routes: {
            ParityRecordPage.id: (context) => ParityRecordPage(),
            MyParityRecordPage.id: (context) => MyParityRecordPage()
            // '/first': (context) => MainScreen2(),
            // '/second': (context) => MainScreen3(),
          },
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.person_outline_outlined,
          size: 25,
          // color: Colors.green,
        ),
        title: ("Mine"),
        activeColorPrimary: Colors.green,
        inactiveColorPrimary: Colors.grey,
        routeAndNavigatorSettings: RouteAndNavigatorSettings(
          initialRoute: MinePage.id,
          routes: {
            AddBankDetails.id: (context) => AddBankDetails(),
            BankCardPage.id: (context) => BankCardPage(),
            OrdersPage.id: (context) => OrdersPage(),
            PromotionPage.id: (context) => PromotionPage(),
            ReachargePage.id: (context) => ReachargePage(),
            WithdralPage.id: (context) => WithdralPage(),
            AddressPage.id: (context) => AddressPage(),
            AddAddressDetails.id: (context) => AddAddressDetails(),
            TransactionPage.id: (context) => TransactionPage(),
            ReserpasswordPage.id: (context) => ReserpasswordPage(),
            ComplainsAndSuggestionsPage.id: (context) =>
                ComplainsAndSuggestionsPage(),
            AddSuggestionsAndComplainsPage.id: (context) =>
                AddSuggestionsAndComplainsPage(),
            PrivacyPolicyPage.id: (context) => PrivacyPolicyPage(),
            RiskDisclosureAgreementPage.id: (context) =>
                RiskDisclosureAgreementPage()
          },
        ),
        // onPressed: (context) {
        //   pushDynamicScreen(
        //     context,
        //     screen: SampleModalScreen(),
        //     withNavBar: true,
        //   );
        // },
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(title: const Text('Navigation Bar Demo')),
        // drawer: Drawer(
        //   child: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: <Widget>[
        //         const Text('This is the Drawer'),
        //       ],
        //     ),
        //   ),
        // ),
        body: PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    ));
  }
}
