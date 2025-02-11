// import 'package:flutter/material.dart';
// import 'package:segmento_de_moteis/domain/entities/suite.dart';
// import 'package:segmento_de_moteis/utils/constants/app_colors.dart';
//
// class SuiteItens extends StatelessWidget {
//
//   final Suite suite;
//
//   const SuiteItens({super.key, required this.suite});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 5.0),
//       child: Container(
//         height: 80,
//         decoration: BoxDecoration(
//           color: AppColors.white,
//           borderRadius: BorderRadius.all(
//             Radius.circular(8),
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
//                 child: Container(
//                   width: 46,
//                   height: 46,
//                   decoration: BoxDecoration(
//                     color: AppColors.greyItemBackground,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(6),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
//                 child: Container(
//                   width: 46,
//                   height: 46,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage(
//                           'assets/assets/alucard.jpg'),
//                       fit: BoxFit.fill,
//                     ),
//                     color: AppColors.greyItemBackground,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(6),
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
//                 child: Container(
//                   width: 60,
//                   height: 46,
//                   decoration: BoxDecoration(
//                     color: AppColors.white,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(6),
//                     ),
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.end,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text('ver', style: TextStyle(height: 0.1, fontSize: 12, color: AppColors.greyItemContent, fontWeight: FontWeight.bold),
//                             strutStyle: StrutStyle(
//                               height: 0.5,
//                               leading: 0.5,
//                             ),
//                           ),                   //         strutStyle: StrutStyle(
//                           Text('todos', style: TextStyle(height: 0.1, fontSize: 12, color: AppColors.greyItemContent, fontWeight: FontWeight.bold),
//                             strutStyle: StrutStyle(
//                               height: 0.5,
//                               leading: 0.5,
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         width: 5,
//                       ),
//                       Icon(
//                         Icons.keyboard_arrow_down_rounded,
//                         size: 16,
//                         color: AppColors.greyItemContent,
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/domain/entities/suite.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class SuiteItens extends StatelessWidget {

  final Suite suite;

  const SuiteItens({super.key, required this.suite});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: suite.categoryItens.length < 4 ? suite.categoryItens.length : 4,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                    child: Container(
                      width: 46,
                      height: 46,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              suite.categoryItens[index].icon),
                          fit: BoxFit.fill,
                        ),
                        color: AppColors.greyItemBackground,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8),
                child: Container(
                  width: 60,
                  height: 46,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('ver', style: TextStyle(height: 0.1, fontSize: 12, color: AppColors.greyItemContent, fontWeight: FontWeight.bold),
                            strutStyle: StrutStyle(
                              height: 0.5,
                              leading: 0.5,
                            ),
                          ),                   //         strutStyle: StrutStyle(
                          Text('todos', style: TextStyle(height: 0.1, fontSize: 12, color: AppColors.greyItemContent, fontWeight: FontWeight.bold),
                            strutStyle: StrutStyle(
                              height: 0.5,
                              leading: 0.5,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 16,
                        color: AppColors.greyItemContent,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}
