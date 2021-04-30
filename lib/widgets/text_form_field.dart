import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  String labelText;
  String hintText;
  TextInputType keyBoardType;
  Widget suffix;
  Widget prefix;
  bool enable;
  int lines;
  Function onTAP;
  InputBorder border;
  TextInputType inputType;
  TextEditingController controller;
  TextAlign align;
  InputBorder inputBorder;
  bool obscureText;
  Function onChanged;
  TextInputAction action;
  bool filled;
  EdgeInsetsGeometry padding;
  bool isDense;
  double hintFontSize;
  List<TextInputFormatter> inputTextFormatter;
  final FormFieldValidator<String> validator;

  CustomTextFormFieldWidget({
    this.hintText = '',
    this.keyBoardType,
    this.isDense = false,
    this.labelText = '',
    this.hintFontSize = 12,
    this.suffix,
    this.validator,
    this.prefix,
    this.inputType,
    this.inputTextFormatter,
    this.border,
    this.lines = 1,
    this.enable = true,
    this.controller,
    this.onTAP,
    this.filled = true,
    this.padding,
    this.onChanged,
    this.action,
    this.obscureText = false,
    this.inputBorder = InputBorder.none,
    this.align = TextAlign.start,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: TextFormField(
        //  cursorHeight: 3,
        validator: validator,

        onChanged: onChanged,

        maxLines: lines,
        textAlign: TextAlign.start,
        inputFormatters: inputTextFormatter,
        controller: controller,
        cursorColor: Colors.black,
        enabled: true,
        //  enableSuggestions: true,
        textInputAction: action,
        // enableInteractiveSelection: false,
        textDirection: TextDirection.ltr,
        //  autofocus: true,
        style: TextStyle(
          fontSize: 16,
        ),

        decoration: InputDecoration(
          suffixIcon: suffix,
          prefixIcon: prefix,
          filled: filled,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          isDense: isDense,
          // contentPadding: padding,
          enabledBorder: OutlineInputBorder(
            // borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),

          hintStyle: TextStyle(
            fontSize: hintFontSize,
          ),
          focusColor: Colors.black,
          hintText: hintText,
        ),
        keyboardType: inputType,
      ),
    );
  }
}
