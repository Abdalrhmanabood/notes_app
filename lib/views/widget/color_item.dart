import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isSelect, required this.color});
  final bool isSelect;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return isSelect
        ?  CircleAvatar(
            radius: 38,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundColor: color,
              radius: 34,
            ),
          )
        :  CircleAvatar(
            backgroundColor: color,
            radius: 38,
          );
  }
}