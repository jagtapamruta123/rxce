import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:rxce/pages/mine/bank_componants/add_bank_details.dart';
import 'package:rxce/widgets/clickable_text_widget.dart';
import 'package:rxce/widgets/custom_chip_content_widget.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';
import 'package:rxce/widgets/custom_text_form_field.dart';
import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/text_form_field.dart';
import 'package:chips_choice/chips_choice.dart';

class WithdralPage extends StatefulWidget {
  static String id = 'withdrawl';
  @override
  _WithdralPageState createState() => _WithdralPageState();
}

class _WithdralPageState extends State<WithdralPage> {
  bool isSelectedPaymenthod = true;
  int tag = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        title: CustomTextWidget(
          title: 'Recharge',
          fontSize: 20,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 15, 0),
              height: 120,
              color: Colors.orange.withOpacity(0.7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                          'rihgvuiuifdhnxvjndfuiihjknvnduigbofbuiftbhfgnhfgtbhcfxv',
                      fontSize: 15,
                      lines: 5,
                      overFlow: TextOverflow.ellipsis,
                      color: Colors.white,
                      letterSpecing: 1.5,
                      fontFamily: 'Archia',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            CustomTextWidget(
              title: 'Any problem ? Contact..',
              fontSize: 20,
              lines: 5,
              overFlow: TextOverflow.ellipsis,
              color: Colors.red,
              letterSpecing: 1.5,
              fontFamily: 'Archia',
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 10,
            ),
            WalletItemText(
              name: '@gmail.com',
              color: Colors.green,
              decoration: TextDecoration.underline,
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 3,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  CustomTextWidget(
                    title: 'Balance : ₹ 0.00',
                    fontSize: 30,
                    lines: 5,
                    overFlow: TextOverflow.ellipsis,
                    // color: Colors.red,
                    letterSpecing: 1.5,
                    fontFamily: 'Archia',
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: CustomTextFormFieldWidget(
                      // enable: true,
                      validator: (String val) {
                        if (val.isEmpty) {
                          return '';
                        }
                        return null;
                      },
                      //  inputBorder: ,
                      //   controller: _nameController,
                      prefix: Icon(
                        Icons.attach_money,
                        size: 15,
                      ),
                      filled: false,
                      isDense: true,
                      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                      align: TextAlign.center,
                      inputTextFormatter: [
                        LengthLimitingTextInputFormatter(20),
                      ],
                      inputType: TextInputType.number,
                      // action: TextInputAction.newline,
                      hintFontSize: 15,

                      onChanged: (value) {
                        //  name = value;
                      },

                      hintText: 'Enter withdrawal amount',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: CustomTextWidget(
                        title: 'Fee:0 ,to Account: 0',
                        fontSize: 15,
                        lines: 5,
                        overFlow: TextOverflow.ellipsis,
                        color: Colors.black,
                        letterSpecing: 1.0,
                        fontFamily: 'Archia',
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 22),
                      child: CustomTextWidget(
                        title: 'Payments :',
                        fontSize: 15,
                        lines: 5,
                        overFlow: TextOverflow.ellipsis,
                        color: Colors.grey,
                        letterSpecing: 1,
                        fontFamily: 'Archia',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isSelectedPaymenthod = !isSelectedPaymenthod;
                            });
                          },
                          child: ListTile(
                            leading: Visibility(
                              visible: isSelectedPaymenthod,
                              child: Icon(
                                Icons.card_membership,
                              ),
                            ),
                            trailing: isSelectedPaymenthod
                                ? Icon(
                                    Icons.keyboard_arrow_up,
                                    size: 25,
                                  )
                                : Icon(
                                    Icons.keyboard_arrow_down,
                                    size: 25,
                                  ),
                            minLeadingWidth: 10,
                            title: CustomTextWidget(
                              title: 'Select Bank Card',
                              fontSize: 15,
                              overFlow: TextOverflow.ellipsis,
                              color: Colors.black,
                              letterSpecing: 1,
                              fontFamily: 'Archia',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Visibility(
                            visible: isSelectedPaymenthod,
                            child: Column(
                              children: [
                                Divider(
                                  thickness: 1,
                                  indent: 10,
                                  endIndent: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                      context,
                                      AddBankDetails.id,
                                    );
                                  },
                                  child: ListTile(
                                    leading: Icon(
                                      Icons.note,
                                    ),
                                    title: CustomTextWidget(
                                      title: 'Add Bank Card',
                                      fontSize: 15,
                                      overFlow: TextOverflow.ellipsis,
                                      color: Colors.black,
                                      letterSpecing: 1,
                                      fontFamily: 'Archia',
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: CustomTextFormField(
                      prefix: Icon(Icons.lock),
                      label: 'Enter your payment password',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomFlatButtonWidget(
                    onTap: () {},
                    title: 'Withdrawal',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
