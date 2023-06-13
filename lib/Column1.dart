import 'package:flutter/material.dart';
import 'Constants.dart';

class ReuseColumn extends StatelessWidget {

  final String text;
  final IconData icon;
  const ReuseColumn({super.key, required this.text,required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon,size: 80,),
        SizedBox(height: 18,),
        Text('$text', style:kstyle),

      ],
    );
  }
}