import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class MotelOptionItemButton extends StatelessWidget {
  final Widget? icon;
  final String text;

  const MotelOptionItemButton({super.key, this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          border: Border.all(
            color: AppColors.greyDivider,
            width: 2.0,
          ),
        ),
        height: 36,
        child: Center(
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
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
