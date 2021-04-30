import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  Function onChange;
  Widget prefix;
  Widget suffix;
  String label;
  String hint;
  int maxLine;
  TextInputType textInputType;
  List<TextInputFormatter> inputFormatters;

  CustomTextFormField({
    this.controller,
    this.label,
    this.maxLine =1,
    this.textInputType,
    this.onChange,
    this.prefix,
    this.suffix,
    this.hint,
    this.inputFormatters,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.grey,
      controller: controller,
      maxLines:maxLine ,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      //  [
      //   // FilteringTextInputFormatter.digitsOnly,
      //  LengthLimitingTextInputFormatter(10),
      //  ],
      onChanged: onChange,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: false,
        isDense: true,

        prefixIcon: prefix,
        suffixIcon: suffix,

        // focusedBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide(
        //     // color: Colors.green,
        //     style: BorderStyle.solid,
        //     width: 0.5,
        //   ),
        // ),
        // enabledBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(10),
        //   borderSide: BorderSide(
        //     color: Colors.green,
        //     style: BorderStyle.solid,
        //     width: 0.5,
        //   ),
        // ),
        hintText: hint,
        labelStyle: TextStyle(color: Colors.green, fontFamily: "Archia"),
        labelText: label,
        hintStyle: TextStyle(color: Colors.grey, fontFamily: "Archia"),
      ),
    );
  }
}
