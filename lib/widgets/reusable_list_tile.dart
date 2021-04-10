import 'package:flutter/material.dart';

class ReusableListTile extends StatelessWidget {
  final String title;
  final Widget icon;
  final Function onTap;
  ReusableListTile({this.icon, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: ListTile(
        leading: icon,
        title: Text(
          title,
        ),
      ),
      onTap: onTap,
    );
  }
}
