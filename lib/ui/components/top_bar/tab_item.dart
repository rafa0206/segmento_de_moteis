import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final String title;
  final Widget icon;

  const TabItem({
    super.key,
    required this.title,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsetsDirectional.only(start: 0),
            padding: EdgeInsets.all(0),
            child: Center(
              child: icon
            ),
          ),
          Expanded(
            child: Text(
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              title,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ]
      ),
    );
  }
}
