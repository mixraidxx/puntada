import 'package:flutter/material.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/services.dart';

class Dialogs {
  static showTopMessage(
      BuildContext context, String? message, TopMessageType type,
      {Function? onDissmiss}) {
    HapticFeedback.mediumImpact();
    Flushbar(
      message: message,
      backgroundColor: type == TopMessageType.Error ? Colors.red : Colors.green,
      flushbarStyle: FlushbarStyle.FLOATING,
      margin: const EdgeInsets.all(8),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      flushbarPosition: FlushbarPosition.TOP,
      duration: const Duration(seconds: 2),
      onStatusChanged: (FlushbarStatus? status) {
        if (status == FlushbarStatus.DISMISSED) {
          if (onDissmiss != null) {
            onDissmiss();
          }
        }
      },
    ).show(context);
  }
}

enum TopMessageType { Error, Success }
