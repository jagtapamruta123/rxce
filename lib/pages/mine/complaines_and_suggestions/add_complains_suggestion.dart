import 'package:flutter/material.dart';
import 'package:rxce/widgets/custom_flat_button_widget.dart';
import 'package:rxce/widgets/custom_text_form_field.dart';
import 'package:rxce/widgets/custom_text_widget.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';

class AddSuggestionsAndComplainsPage extends StatefulWidget {
  static String id = 'add_suggestions';
  @override
  _AddSuggestionsAndComplainsPageState createState() =>
      _AddSuggestionsAndComplainsPageState();
}

class _AddSuggestionsAndComplainsPageState
    extends State<AddSuggestionsAndComplainsPage> {
  List types = [];
  String type;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: CustomTextWidget(
          title: 'Add Suggestions & Complains',
          fontSize: 20,
          lines: 1,
          overFlow: TextOverflow.ellipsis,
          color: Colors.white,
          letterSpecing: 1.5,
          fontFamily: 'Archia',
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DropDownFormField(
                contentPadding: EdgeInsets.zero,
                hintText: 'Type',
                titleText: '',
                filled: false,
                value: type,
                onSaved: (value) {
                  setState(() {
                    type = value;
                  });
                },
                onChanged: (value) {
                  setState(() {
                    type = value;
                  });
                },
                dataSource: [
                  {
                    "display": "Suggestions",
                    "value": "Suggestions",
                  },
                  {
                    "display": "Consult",
                    "value": "Consult",
                  },
                  {
                    "display": "Recharge Problem",
                    "value": "Recharge Problem",
                  },
                  {
                    "display": "Withdraw Problem",
                    "value": "Withdraw Problem",
                  },
                  {
                    "display": "Parity Problem",
                    "value": "Parity Problem",
                  },
                  {
                    "display": "Gift Recive Problem",
                    "value": "Gift Recive Problem",
                  },
                  {
                    "display": "other",
                    "value": "other",
                  },
                ],
                textField: 'display',
                valueField: 'value',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'Full Name',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'Out Id',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                label: 'WhatsApp',
              ),
              SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                maxLine: 4,
                label: 'Description',
              ),
              SizedBox(
                height: 20,
              ),
              CustomTextWidget(
                title: 'service :11:00 about 1-5 bussiness days',
                fontSize: 10,
                color: Colors.black,
                letterSpecing: 1.5,
                fontFamily: 'Archia',
                fontWeight: FontWeight.normal,
              ),
              SizedBox(
                height: 20,
              ),
              CustomFlatButtonWidget(
                onTap: () {},
                title: '   Continue   ',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
