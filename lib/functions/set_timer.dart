import 'package:flutter/material.dart';

class SetTimer extends StatelessWidget {
  final AnimationController controller;
  double fontSize;
  Color timeColor = Colors.black;

  SetTimer(this.controller, this.fontSize, this.timeColor);

  String get timerString {
    Duration duration = controller.duration * controller.value;
    if (duration.inHours > 0) {
      return '${duration.inHours}:${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
    }
    return '${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  Duration get duration {
    Duration duration = controller.duration;
    return duration;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget child) {
          return new Text(
            timerString,
            style: new TextStyle(
              fontSize: fontSize,
              color: timeColor,
              fontWeight: FontWeight.w400,
            ),
          );
        });
  }
}

class SetOtpTimer extends StatelessWidget {
  final AnimationController controller;
  double fontSize;
  Color timeColor = Colors.black;

  SetOtpTimer(this.controller, this.fontSize, this.timeColor);

  String get timerString {
    Duration duration = controller.duration * controller.value;
    if (duration.inHours > 0) {
      return '${duration.inHours}:${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
    }
    return '${duration.inMinutes % 60}:${(duration.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  Duration get duration {
    Duration duration = controller.duration;
    return duration;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget child) {
          return new Text(
            " Your Otp will be expired " + timerString + " Sec",
            style: new TextStyle(
              fontSize: fontSize,
              color: timeColor,
              fontWeight: FontWeight.w400,
            ),
          );
        });
  }
}
