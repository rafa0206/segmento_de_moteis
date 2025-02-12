import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }

  static Widget loading(BuildContext context,
      {double? width, double? height, double? strokeWidth, Color? color}) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Center(
        child: SizedBox(
          width: width ?? 60,
          height: height ?? 60,
          child: CircularProgressIndicator(
            valueColor:
            const AlwaysStoppedAnimation<Color>(AppColors.red),
            strokeWidth: strokeWidth ?? 5,
          ),
        ),
      ),
    );
  }

  static Widget alertMessageNoMotels(String message,
      {double? fontSize, FontWeight? fontWeight, Color? color}) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 40),
        child: SizedBox(
          height: 190,
          child: Column(
            children: [
              const SizedBox(
                width: 200,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0),
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.insert_chart,
                            size: 140,
                            color: AppColors.greyItemContent,
                          ),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.search_off,
                            size: 90,
                            color: AppColors.darkGreyText,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                message,
                style: TextStyle(
                    fontSize: fontSize ?? 15,
                    color: color ?? Colors.grey[600],
                    fontWeight: fontWeight ?? FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }


  static Widget alertScreenNotComplet(String message,
      {double? fontSize, FontWeight? fontWeight, Color? color}) {
    return Center(
      child: SizedBox(
        height: 190,
        child: Column(
          children: [
            const SizedBox(
              width: 200,
              child: Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 140,
                          color: AppColors.greyItemContent,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 70,
                        ),
                        Icon(
                          Icons.build_sharp,
                          size: 90,
                          color: AppColors.darkGreyText,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              message,
              style: TextStyle(
                  fontSize: fontSize ?? 15,
                  color: color ?? Colors.grey[600],
                  fontWeight: fontWeight ?? FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

}
