import 'dart:async';

import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:rxce/functions/set_timer.dart';
import 'package:rxce/widgets/custom_chip_content_widget.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';
import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/peroid_record_item_widget.dart';

import '../my_parity_record_page.dart';
import '../parity_record_page.dart';

class ParityBody extends StatefulWidget {
  @override
  _ParityBodyState createState() => _ParityBodyState();
}

class _ParityBodyState extends State<ParityBody> with TickerProviderStateMixin {
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
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 25, 10, 0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    title: 'Period',
                    fontSize: 18,
                    color: Colors.grey,
                    letterSpecing: 1,
                    fontFamily: 'Archia',
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextWidget(
                    title: '3478632871493',
                    fontSize: 20,
                    color: Colors.black,
                    letterSpecing: 1,
                    fontFamily: 'Archia',
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Spacer(),
              // SizedBox(
              //   width: MediaQuery.of(context).size.width / 5,
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomTextWidget(
                    title: 'CountDown',
                    fontSize: 20,
                    color: Colors.grey,
                    letterSpecing: 1,
                    fontFamily: 'Archia',
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SetTimer(_controller, 25.0, Colors.black)
                  // CustomTextWidget(
                  //   title: '00:00',
                  //   fontSize: 20,
                  //   color: Colors.black,
                  //   letterSpecing: 1,
                  //   fontFamily: 'Archia',
                  //   fontWeight: FontWeight.bold,
                  // ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 10,
            ),
            CustomFlatButtonWidget(
              onTap: () {
                _showJoinGameDialog(
                  context,
                  Colors.green,
                  'Join Green',
                  options,
                  tag = 0,
                  contractMoney,
                );
              },
              title: 'Join Green',
              color: Colors.green,
            ),
            SizedBox(
              width: 7,
            ),
            CustomFlatButtonWidget(
              onTap: () {
                // _showJoinGameDialog(
                //   context,
                //   Colors.red,
                //   'Join Red',
                // );
              },
              title: 'Join Red',
              color: Colors.red,
            ),
            SizedBox(
              width: 7,
            ),
            CustomFlatButtonWidget(
              onTap: () {
                // _showJoinGameDialog(
                //   context,
                //   Colors.blueAccent[700],
                //   'Join Violet',
                // );
              },
              title: 'Join Violet',
              color: Colors.blueAccent[700],
            ),
          ],
        ),
        SizedBox(
          height: 7,
        ),
        Container(
          height: 115,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 10, 0),
            child: GridView.count(
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 5,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              shrinkWrap: true,
              childAspectRatio: ((MediaQuery.of(context).size.width) / 5.7) /
                  ((MediaQuery.of(context).size.height) / 18),
              children: List.generate(10, (index) {
                return Card(
                  elevation: 4,
                  child: CustomFlatButtonWidget(
                    onTap: () {},
                    title: '$index',
                    color: Colors.lightBlue[400],
                  ),
                );
              }),
            ),
          ),
        ),
        // SizedBox(
        //   height: 7,
        // ),

        InkWell(
          onTap: () {
            Navigator.pushNamed(context, ParityRecordPage.id);
          },
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Divider(
                  thickness: 0.5,
                ),
                Icon(
                  Icons.wine_bar_rounded,
                ),
                SizedBox(
                  height: 7,
                ),
                CustomTextWidget(
                  title: 'Parity Record',
                  fontSize: 15,
                  color: Colors.black,
                  letterSpecing: 1.5,
                  fontFamily: 'Archia',
                  fontWeight: FontWeight.bold,
                ),
                Divider(
                  height: 20,
                  thickness: 1.5,
                  color: Colors.green[700],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        ListRecordHeader(
          period: 'Period',
          price: 'Price',
          number: 'Number',
          results: 'Results',
        ),
        Divider(
          height: 30,
          thickness: 1,
        ),
        Flexible(
          child: ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return RecordItemWidget(
                  period: '14878',
                  price: '54632',
                  number: '9',
                  results: 'results',
                );
              }),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, MyParityRecordPage.id);
          },
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                Icon(
                  Icons.wine_bar_rounded,
                ),
                SizedBox(
                  height: 7,
                ),
                CustomTextWidget(
                  title: 'My Parity Record',
                  fontSize: 15,
                  color: Colors.black,
                  letterSpecing: 1.5,
                  fontFamily: 'Archia',
                  fontWeight: FontWeight.bold,
                ),
                Divider(
                  height: 20,
                  thickness: 1.5,
                  color: Colors.green[700],
                )
              ],
            ),
          ),
        ),
      ],
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
        bool isIncreasing = false;
        bool isDecreasin = false;
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
                                isDecreasin = true;
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
                              isIncreasing = true;
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
}

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
