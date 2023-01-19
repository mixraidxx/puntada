import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CommonView extends StatelessWidget {
  const CommonView({super.key, required this.mainView, required this.child});
  final Widget mainView;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(
      children: [
        Column(
          children: [
            Expanded(flex: 2, child: mainView),
            Expanded(
              flex: 4,
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 80),
                  child: child,
                ),
              ),
            )
          ],
        )
      ],
    ));
  }
}
