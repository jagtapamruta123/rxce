import 'dart:async';

import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:rxce/functions/set_timer.dart';
import 'package:rxce/pages/period/parity_record_page.dart';
import 'package:rxce/widgets/custom_chip_content_widget.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';

import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/peroid_record_item_widget.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

import 'components/bcon_body.dart';
import 'components/emerd_body.dart';
import 'components/parity_body.dart';
import 'components/spare_body.dart';
import 'my_parity_record_page.dart';

class PeriodHomePage extends StatefulWidget {
  static String id = 'period_home';
  @override
  _PeriodHomePageState createState() => _PeriodHomePageState();
}

class _PeriodHomePageState extends State<PeriodHomePage>
    with TickerProviderStateMixin {
  TabController _tabController;
  int contractMoney;
  var data = 10;
  int tag = 0;
  int number = 1;
  AnimationController _controller;
  Timer timer;
  final int time = 180;
  List<String> options = [
    '₹ 10',
    '₹ 100',
    '₹ 1000',
    '₹ 10000',
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: time))
          ..addStatusListener((status) {
            if (status == AnimationStatus.dismissed) {
              setState(() {
                // _hideResendButton = !_hideResendButton;
              });
            }
          });
    _controller.reverse(
        from: _controller.value == 0.0 ? 1.0 : _controller.value);
    _startCountdown();
    timer = Timer.periodic(
      Duration(seconds: 180),
      (Timer t) => _startCountdown(),
    );
    // print("Selected Index: " + _controller.index.toString());
  }

  Future<Null> _startCountdown() async {
    setState(() {
      //  _hideResendButton = true;
      // totalTimeInSeconds = time;
    });
    _controller.reverse(
        from: _controller.value == 0.0 ? 1.0 : _controller.value);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        // leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Period',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 3000, minHeight: 1000),
          //  height: 2000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 10, 15, 0),
                height: 80,
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Center(
                      child: Icon(
                        Icons.info_outline,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: CustomTextWidget(
                        title:
                            'The withdrawl channel has been restored.fhvdvbj',
                        fontSize: 15,
                        lines: 5,
                        overFlow: TextOverflow.ellipsis,
                        color: Colors.white,
                        letterSpecing: 1.5,
                        fontFamily: 'Archia',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 30, 15, 0),
                height: 130,
                color: Colors.green[700],
                child: Column(
                  children: [
                    CustomTextWidget(
                      title: 'Available balance : ₹ 0.00 ',
                      fontSize: 20,
                      color: Colors.white,
                      letterSpecing: 1.5,
                      fontFamily: 'Archia',
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        CustomFlatButtonWidget(
                          onTap: () {},
                          title: 'Recharge',
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        CustomFlatButtonWidget(
                          onTap: () {
                            _showMyDialog(context);
                          },
                          color: Colors.white,
                          textColor: Colors.black,
                          title: 'Read Rule',
                        ),
                        Spacer(),
                        IconButton(
                          icon: Icon(
                            Icons.refresh_outlined,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ),
              TabBar(
                indicatorColor: Colors.green,
                labelColor: Colors.black,
                controller: _tabController,
                onTap: (value) {},
                tabs: [
                  Tab(
                    text: 'Parity',
                  ),
                  Tab(
                    text: 'Sapre',
                  ),
                  Tab(
                    text: 'Bcone',
                  ),
                  Tab(
                    text: 'Emerd',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  //dragStartBehavior: ,
                  physics: NeverScrollableScrollPhysics(),
                  controller: _tabController,
                  children: [
                    ParityBody(),
                    SpareBody(),
                    BconBodyPage(),
                    EmerdBodyPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//temparoryy
class ListRecordHeader extends StatelessWidget {
  String period;
  String price;
  String number;
  String results;
  ListRecordHeader({
    this.number,
    this.period,
    this.price,
    this.results,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextWidget(
          title: period,
          fontSize: 15,
          color: Colors.grey,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          lines: 1,
          overFlow: TextOverflow.ellipsis,
          fontWeight: FontWeight.w600,
        ),
        CustomTextWidget(
          title: price,
          fontSize: 15,
          color: Colors.grey,
          lines: 1,
          overFlow: TextOverflow.ellipsis,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.w600,
        ),
        CustomTextWidget(
          title: number,
          fontSize: 15,
          color: Colors.grey,
          letterSpecing: 1.5,
          lines: 1,
          overFlow: TextOverflow.ellipsis,
          fontFamily: 'Archia',
          fontWeight: FontWeight.w600,
        ),
        CustomTextWidget(
          title: results,
          fontSize: 15,
          color: Colors.grey,
          letterSpecing: 1.5,
          lines: 1,
          overFlow: TextOverflow.ellipsis,
          fontFamily: 'Archia',
          fontWeight: FontWeight.w600,
        ),
      ],
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        actionsPadding: EdgeInsets.zero,
        titlePadding: EdgeInsets.zero,
        buttonPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        //insetPadding: EdgeInsets.zero,
        title: Container(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text('Rule Of Guess'),
          ),
          decoration: BoxDecoration(
            color: Colors.grey[350],
          ),
        ),
        content: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
                Text('Would you like to approve of this message?'),
                Text('Would you like to approve of this message?'),
                Text('Would you like to approve of this message?'),
                Text('Would you like to approve of this message?'),
                // Divider(
                //   thickness: 1.5,
                // ),
                // Container(
                //   alignment: Alignment.bottomRight,
                //   child: TextButton(
                //     style: ButtonStyle(),
                //     child: CustomTextWidget(
                //       title: 'CLOSE',
                //       fontSize: 15,
                //       color: Colors.black,
                //       letterSpecing: 1.5,
                //       fontFamily: 'Archia',
                //       fontWeight: FontWeight.w600,
                //     ),
                //     onPressed: () {
                //       Navigator.of(context).pop();
                //     },
                //   ),
                // ),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            // style: ButtonStyle(backgroundColor: Colors.),
            child: CustomTextWidget(
              title: 'CLOSE',
              fontSize: 18,
              color: Colors.black,
              letterSpecing: 1.5,
              fontFamily: 'Archia',
              fontWeight: FontWeight.w600,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

int showTotalMoney(
  int tag,
) {
  switch (tag) {
    case 0:
      return 10;
      break;
    case 1:
      return 100;
      break;
    case 2:
      return 1000;
      break;
    case 3:
      return 10000;

      break;
    default:
      return 10;
  }
}

Future<void> _showJoinGameDialog(
  BuildContext context,
  Color color,
  String name,
  List<String> options,
  tag,
  int contractMoney,
) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      int num = 1;
      contractMoney = 10;

      int totalmoney = contractMoney;
      return StatefulBuilder(
        builder: (context, setState) {
          return AlertDialog(
            actionsPadding: EdgeInsets.zero,
            titlePadding: EdgeInsets.zero,
            buttonPadding: EdgeInsets.zero,
            //contentPadding: EdgeInsets.zero,
            //insetPadding: EdgeInsets.zero,
            title: Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  name,
                ),
              ),
              decoration: BoxDecoration(
                color: color,
              ),
            ),
            content: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // CustomTextWidget(
                  //   title: ,
                  //   fontSize: 14,
                  //   color: Colors.black,
                  //   letterSpecing: 1.5,
                  //   fontFamily: 'Archia',
                  //   fontWeight: FontWeight.w600,
                  // ),
                  // SizedBox(
                  //   height: 10,
                  // ),
                  Content(
                    title: 'Contract Money',
                    child: ChipsChoice<int>.single(
                      value: tag,
                      onChanged: (val) {
                        setState(() {
                          tag = val;
                          contractMoney = showTotalMoney(
                            tag,
                          );

                          totalmoney = contractMoney * num;
                          // if (isIncreasing) {
                          //   totalmoney = contractMoney * num;
                          // }
                          // if (isIncreasing) {
                          //   totalmoney = totalmoney - contractMoney;
                          // }

                          // totalmoney = contractMoney;
                        });
                      },
                      choiceItems: C2Choice.listFrom<int, String>(
                        source: options,
                        value: (i, v) => i,
                        label: (i, v) => v,
                        tooltip: (i, v) => v,
                      ),
                      choiceStyle: C2ChoiceStyle(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                      ),
                      wrapped: true,
                    ),
                  ),
                  // Card(
                  //   elevation: 7,
                  //   child: Container(
                  //     height: 45,
                  //     width: MediaQuery.of(context).size.width / 2.5,
                  //     child: Row(
                  //       children: [
                  //         InkWell(
                  //           onTap: () {},
                  //           child: Container(
                  //             child: Padding(
                  //               padding: const EdgeInsets.all(8.0),
                  //               child: Text('10'),
                  //             ),
                  //           ),
                  //         ),
                  //         Container(
                  //           width: 30,
                  //           child: Text('100'),
                  //         ),
                  //         Container(
                  //           width: 40,
                  //           child: Text('1000'),
                  //         ),
                  //         Container(
                  //           width: 40,
                  //           child: Text('10000'),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),

                  SizedBox(
                    height: 20,
                  ),
                  CustomTextWidget(
                    title: 'Number',
                    fontSize: 14,
                    color: Colors.black,
                    letterSpecing: 1.5,
                    fontFamily: 'Archia',
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FlatButton(
                        color: Colors.grey.withOpacity(0.5),
                        onPressed: () {
                          setState(() {
                            if (num > 1) {
                              num--;
                              totalmoney = totalmoney - contractMoney;
                            }

                            // contractMoney = contractMoney - 10;
                          });
                        },
                        child: Icon(
                          Icons.remove,
                        ),
                      ),
                      CustomTextWidget(
                        title: '$num',
                        fontSize: 14,
                        color: Colors.black,
                        letterSpecing: 1.5,
                        fontFamily: 'Archia',
                        fontWeight: FontWeight.w600,
                      ),
                      FlatButton(
                        color: Colors.grey.withOpacity(0.5),
                        onPressed: () {
                          setState(() {
                            num++;
                            totalmoney = contractMoney * num;
                          });
                        },
                        child: Icon(
                          Icons.add,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  CustomTextWidget(
                    title: 'Total number of money is  $totalmoney',
                    fontSize: 14,
                    color: Colors.black,
                    letterSpecing: 1.5,
                    fontFamily: 'Archia',
                    fontWeight: FontWeight.w600,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        onChanged: null,
                        value: true,
                      ),
                      RichText(
                        text: TextSpan(
                          text: 'I Agree ',
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                              text: 'PRESALE RULES',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                // style: ButtonStyle(backgroundColor: Colors.),
                child: CustomTextWidget(
                  title: 'Cancel',
                  fontSize: 15,
                  color: Colors.black,
                  letterSpecing: 1.5,
                  fontFamily: 'Archia',
                  fontWeight: FontWeight.w600,
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                // style: ButtonStyle(backgroundColor: Colors.),
                child: CustomTextWidget(
                  title: 'Confirm',
                  fontSize: 15,
                  //   color: Colors.black,
                  letterSpecing: 1.5,
                  fontFamily: 'Archia',
                  fontWeight: FontWeight.w600,
                ),
                onPressed: () {
                  // Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    },
  );
}
