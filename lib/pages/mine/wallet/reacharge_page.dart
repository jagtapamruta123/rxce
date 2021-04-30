import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:rxce/widgets/clickable_text_widget.dart';
import 'package:rxce/widgets/custom_chip_content_widget.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';
import 'package:rxce/widgets/custom_text_form_field.dart';
import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:rxce/widgets/text_form_field.dart';
import 'package:chips_choice/chips_choice.dart';

class ReachargePage extends StatefulWidget {
  static String id = 'reacharge';
  @override
  _ReachargePageState createState() => _ReachargePageState();
}

class _ReachargePageState extends State<ReachargePage> {
  bool isSelectedPaymenthod = true;
  int tag = 1;
  List<String> options = [
    '₹ 100',
    '₹ 600',
    '₹ 1000',
    '₹ 3000',
    '₹ 5000',
    '₹ 10000',
  ];

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
              height: 30,
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
                    return 'Name is Required';
                  }
                  return null;
                },
                //  inputBorder: ,
                //   controller: _nameController,
                prefix: Icon(
                  Icons.money,
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

                hintText: 'Please select Recharge Amount',
              ),
            ),
          
          
            SizedBox(
              height: 20,
            ),
            Content(
              title: 'Payments',
              child: ChipsChoice<int>.single(
                value: tag,
                onChanged: (val) => setState(() => tag = val),
                choiceItems: C2Choice.listFrom<int, String>(
                  source: options,
                  value: (i, v) => i,
                  label: (i, v) => v,
                  tooltip: (i, v) => v,
                ),
                choiceStyle: C2ChoiceStyle(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                wrapped: true,
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Visibility(
                  visible: isSelectedPaymenthod,
                  child: Icon(
                    Icons.check,
                  ),
                ),
                minLeadingWidth: 10,
                title: CustomTextWidget(
                  title: 'New SEPRO UPI',
                  fontSize: 15,
                  overFlow: TextOverflow.ellipsis,
                  color: Colors.black,
                  letterSpecing: 1,
                  fontFamily: 'Archia',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isSelectedPaymenthod = true;
                });
              },
              child: ListTile(
                leading: Visibility(
                  visible: isSelectedPaymenthod,
                  child: Icon(
                    Icons.check,
                  ),
                ),
                minLeadingWidth: 10,
                title: CustomTextWidget(
                  title: 'Ek',
                  fontSize: 15,
                  overFlow: TextOverflow.ellipsis,
                  color: Colors.black,
                  letterSpecing: 1,
                  fontFamily: 'Archia',
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            CustomFlatButtonWidget(
              onTap: () {},
              title: 'Recharge',
            ),
          ],
        ),
      ),
    
    
    );
  }
}
