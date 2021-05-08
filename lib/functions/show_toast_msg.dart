import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

showStyledToast(
  String msg,
  BuildContext context,
) {
  showToast(
    msg,
    context: context,
    fullWidth: true,
    backgroundColor: Colors.red,
    animation: StyledToastAnimation.scale,
    reverseAnimation: StyledToastAnimation.fadeScale,
    position: StyledToastPosition(align: Alignment.topCenter, offset: 55.0),
    startOffset: Offset(-1.0, 0.0),
    animDuration: Duration(seconds: 1),
    duration: Duration(seconds: 4),
    curve: Curves.linear,
    reverseCurve: Curves.linear,
  );
}

showToastNormal(
  String msg,
  Color color,
) {
  Fluttertoast.showToast(
    msg: msg,
    toastLength: Toast.LENGTH_LONG,
    gravity: ToastGravity.SNACKBAR,
    // timeInSecForIosWeb: 1,
    backgroundColor: color,
    textColor: Colors.white,
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
