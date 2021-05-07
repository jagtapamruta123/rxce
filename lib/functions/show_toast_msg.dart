import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast(
  String msg,
) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.TOP,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.lightBlue.withOpacity(0.1),
    textColor: Colors.black,
    fontSize: 16.0,
  );
}

showToastWishList(
  String msg,
) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    // gravity: ToastGravity,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.blue.withOpacity(0.4),
    textColor: Colors.black,
    fontSize: 16.0,
  );
}

showToastRemoveWishList(
  String msg,
) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    // gravity: ToastGravity,
    timeInSecForIosWeb: 1,
    backgroundColor: Colors.red.withOpacity(0.4),
    textColor: Colors.black,
    fontSize: 16.0,
  );
}
