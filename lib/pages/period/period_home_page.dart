import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';

import 'package:rxce/widgets/custom_text_widget.dart';

class PeriodHomePage extends StatefulWidget {
  static String id = 'period_home';
  @override
  _PeriodHomePageState createState() => _PeriodHomePageState();
}

class _PeriodHomePageState extends State<PeriodHomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);

    // print("Selected Index: " + _controller.index.toString());
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
      body: Column(
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
                    title: 'The withdrawl channel has been restored.fhvdvbj',
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
                      onTap: () {},
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
          // SizedBox(
          //   height: 25,
          // ),
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
                Column(
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
                              CustomTextWidget(
                                title: '00:00',
                                fontSize: 20,
                                color: Colors.black,
                                letterSpecing: 1,
                                fontFamily: 'Archia',
                                fontWeight: FontWeight.bold,
                              ),
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
                        JoinItemWidget(
                          onTap: () {},
                          title: 'Join Green',
                          color: Colors.green,
                        ),
                        JoinItemWidget(
                          onTap: () {},
                          title: 'Join Violet',
                          color: Colors.blueAccent[700],
                        ),
                        JoinItemWidget(
                          onTap: () {},
                          title: 'Join Red',
                          color: Colors.red,
                        ),
                      ],
                    )
                  ],
                ),
                Container(),
                Container(),
                Container(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class JoinItemWidget extends StatelessWidget {
  Color color;
  String title;
  Function onTap;
  JoinItemWidget({
    this.color,
    this.title,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        splashColor: color,
        child: Container(
          alignment: Alignment.center,
          height: 37,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: CustomTextWidget(
              title: title,
              fontSize: 18,
              color: Colors.white,
              letterSpecing: 1.5,
              fontFamily: 'Archia',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
