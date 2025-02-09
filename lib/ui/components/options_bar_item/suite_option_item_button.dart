import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/utils/constants/theme.dart';

class SuiteOptionItemButton extends StatelessWidget {
  final Widget? icon;
  final String text;

  const SuiteOptionItemButton({super.key, this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.mainWhite,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          border: Border.all(
            color: AppTheme.mainDividerGrey,
            width: 2.0,
          ),
        ),
        height: 36,
        child: Center(
          child: Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                children: [
                  Visibility(
                    visible: icon != null,
                    child: Row(
                      children: [
                        icon ?? SizedBox.shrink(),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    text,
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
