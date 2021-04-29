import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxce/pages/mine/orders/orders_page.dart';
import 'package:rxce/pages/mine/promotions/promotion_page.dart';

import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/mine_page_body_item.dart';
import 'package:rxce/widgets/user_info_mine_page_widget.dart';

import 'bank_componants/bank_card_page.dart';

class MinePage extends StatefulWidget {
  static String id = 'mine_page';
  const MinePage();
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          title: 'Mine',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.album_outlined,
            ),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(
                Icons.more_vert,
              ),
              onPressed: () {}),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UserInfoWidget(),
              Divider(
                thickness: 1,
                endIndent: 10,
                indent: 10,
              ),
              SizedBox(
                height: 8,
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                name: 'Gift Event ',
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                onTap: () => Navigator.pushNamed(
                  context,
                  OrdersPage.id,
                ),
                name: 'Orders ',
              ),
              MinePageCardItem(
                onTap: () => Navigator.pushNamed(context, PromotionPage.id),
                icon: Icons.wallet_giftcard,
                name: 'Promotions',
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                name: 'Wallet ',
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                name: 'Bank Card ',
                onTap: () => Navigator.pushNamed(
                  context,
                  BankCardPage.id,
                ),
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                name: 'Address',
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                name: 'Account Security',
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                name: 'App Download',
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                name: 'Complains & Suggestions',
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                name: 'About',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
