import 'dart:async';
import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class Message extends StatelessWidget {
  const Message({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }

  // static void onSuccess(
  //     {required GlobalKey<ScaffoldMessengerState> scaffoldKey,
  //       required String message,
  //       required int seconds,
  //       required Function onPop}) {
  //   ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(
  //     SnackBar(
  //       content: Text(message, style: const TextStyle(color: Colors.white)),
  //       backgroundColor: AppColors.lightGreyBackground,
  //       duration: Duration(seconds: seconds),
  //     ),
  //   );
  //   Future.delayed(Duration(seconds: seconds), () {
  //     onPop();
  //   });
  // }

  // static void onFail(
  //     {required GlobalKey<ScaffoldMessengerState> scaffoldKey,
  //       required String message,
  //       required int seconds,
  //       Function? onPop}) {
  //   ScaffoldMessenger.of(scaffoldKey.currentContext!).showSnackBar(
  //     SnackBar(
  //       content: Text(message, style: const TextStyle(color: Colors.white)),
  //       backgroundColor: AppColors.lightGreyBackground,
  //       duration: Duration(seconds: seconds),
  //     ),
  //   );
  // }

  static Widget loading(BuildContext context,
      {double? width, double? height, double? strokeWidth, Color? color}) {
    return Center(
      child: SizedBox(
        width: width ?? 60,
        height: height ?? 60,
        child: CircularProgressIndicator(
          valueColor:
          const AlwaysStoppedAnimation<Color>(AppColors.red),
          strokeWidth: strokeWidth ?? 5,
        ),
      ),
    );
  }

  // static Widget alert(String message,
  //     {double? fontSize, FontWeight? fontWeight, Color? color}) {
  //   return Center(
  //     child: SizedBox(
  //       height: 100,
  //       child: Text(
  //         message,
  //         style: TextStyle(
  //             fontSize: fontSize ?? 15,
  //             color: color ?? Colors.grey[600],
  //             fontWeight: fontWeight ?? FontWeight.bold),
  //       ),
  //     ),
  //   );
  // }

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

  // static Widget alertMessageNoTanks(String message,
  //     {double? fontSize, FontWeight? fontWeight, Color? color}) {
  //   return Center(
  //     child: SizedBox(
  //       height: 400,
  //       child: Column(
  //         children: [
  //           const Stack(
  //             alignment: Alignment.topRight,
  //             children: [
  //               SizedBox(
  //                 width: 200,
  //                 height: 200,
  //                 child: Image(
  //                   image: AssetImage('assets/images/storage-tank.png'),
  //                   opacity: AlwaysStoppedAnimation(.3),
  //                 ),
  //               ),
  //               Icon(
  //                 Icons.search_off,
  //                 size: 120,
  //                 color: AppTheme.mainDarkBlue,
  //                 // color: AppTheme.mainVeryDarkGreen,
  //               ),
  //             ],
  //           ),
  //           Text(
  //             message,
  //             style: TextStyle(
  //                 fontSize: fontSize ?? 15,
  //                 color: color ?? Colors.grey[600],
  //                 fontWeight: fontWeight ?? FontWeight.bold),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
