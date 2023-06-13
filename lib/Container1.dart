import 'package:flutter/material.dart';

class ReuseContainer extends StatelessWidget {
  final Color colors;
  final Widget widget;
  const ReuseContainer({super.key, required this.colors,required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10 ),
      decoration: BoxDecoration(
          color: colors,
          borderRadius: BorderRadius.circular(10)
      ),
      child: widget,
    );
  }
}