import 'package:flutter/material.dart';

class BottomNavMenu extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String iconInfo;
  const BottomNavMenu({Key key, this.icon, this.color, this.iconInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
          size: 30,
        ),
        SizedBox(
          height: 3.0,
        ),
        Text(
          iconInfo,
          style: TextStyle(
            color: color,
            fontFamily: 'Ubuntu',
            fontSize: 15,
          ),
        )
      ],
    );
  }
}
