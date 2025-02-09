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
            margin: EdgeInsetsDirectional.only(start: 5),
            padding: EdgeInsets.all(3),
            child: Center(
              child: icon
            ),
          ),
          Text(
            title,
            overflow: TextOverflow.ellipsis,
          ),
        ]
      ),
    );
  }
}
