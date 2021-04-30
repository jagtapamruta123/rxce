import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rxce/pages/mine/account_security/reset_password_page.dart';
import 'package:rxce/pages/mine/address/address_page.dart';
import 'package:rxce/pages/mine/complaines_and_suggestions/complains_and_suggestions_page.dart';
import 'package:rxce/pages/mine/orders/orders_page.dart';
import 'package:rxce/pages/mine/promotions/promotion_page.dart';
import 'package:rxce/pages/mine/wallet/reacharge_page.dart';
import 'package:rxce/pages/mine/wallet/transactions_page.dart';
import 'package:rxce/pages/mine/wallet/withdral_page.dart';
import 'package:rxce/widgets/clickable_text_widget.dart';

import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/mine_page_body_item.dart';
import 'package:rxce/widgets/user_info_mine_page_widget.dart';

import 'about_page/privacy_policy_page.dart';
import 'about_page/risk_disclosure_agreement_page.dart';
import 'bank_componants/bank_card_page.dart';

class MinePage extends StatefulWidget {
  static String id = 'mine_page';
  const MinePage();
  @override
  _MinePageState createState() => _MinePageState();
}

class _MinePageState extends State<MinePage> {
  bool showWallet = false;
  bool showAbout = false;
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
                onTap: () {
                  setState(() {
                    showWallet = !showWallet;
                  });
                },
                icon: Icons.wallet_giftcard,
                name: 'Wallet ',
                trailing: showWallet
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down_sharp,
              ),
              Visibility(
                  visible: showWallet,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 0, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),
                        WalletItemText(
                          onTap: () {
                            Navigator.pushNamed(context, ReachargePage.id);
                          },
                          name: 'Recharge',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 1,
                          indent: 5,
                          endIndent: 50,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        WalletItemText(
                          onTap: () {
                            Navigator.pushNamed(context, WithdralPage.id);
                          },
                          name: 'Withdrawal',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          thickness: 1,
                          indent: 5,
                          endIndent: 50,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        WalletItemText(
                          onTap: () {
                            Navigator.pushNamed(context, TransactionPage.id);
                          },
                          name: 'Trnsactions',
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  )),
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
                onTap: () => Navigator.pushNamed(
                  context,
                  AddressPage.id,
                ),
              ),
              MinePageCardItem(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ReserpasswordPage.id,
                  );
                },
                icon: Icons.wallet_giftcard,
                name: 'Account Security',
              ),
              MinePageCardItem(
                icon: Icons.wallet_giftcard,
                name: 'App Download',
              ),
              MinePageCardItem(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    ComplainsAndSuggestionsPage.id,
                  );
                },
                icon: Icons.wallet_giftcard,
                name: 'Complains & Suggestions',
              ),
              MinePageCardItem(
                onTap: () {
                  setState(() {
                    showAbout = !showAbout;
                  });
                },
                icon: Icons.wallet_giftcard,
                name: 'About',
                trailing: showAbout
                    ? Icons.keyboard_arrow_up
                    : Icons.keyboard_arrow_down_sharp,
              ),
              Visibility(
                  visible: showAbout,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                PrivacyPolicyPage.id,
                              );
                            },
                            child: ListTile(
                              minVerticalPadding: 0.0,
                              // contentPadding: EdgeInsets.zero,
                              title: CustomTextWidget(
                                title: 'Privacy Policy',
                                fontSize: 15,
                                color: Colors.black,
                                letterSpecing: 1.5,
                                fontFamily: 'Archia',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RiskDisclosureAgreementPage.id,
                              );
                            },
                            child: ListTile(
                              minVerticalPadding: 0.0,
                              // contentPadding: EdgeInsets.zero,
                              title: CustomTextWidget(
                                title: 'Risk Disclosure Agreement',
                                fontSize: 15,
                                color: Colors.black,
                                letterSpecing: 1.5,
                                fontFamily: 'Archia',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
