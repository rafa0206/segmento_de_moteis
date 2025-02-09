// import 'package:flutter/material.dart';
// import 'package:segmento_de_moteis/ui/components/custom_app_bar.dart';
// import 'package:segmento_de_moteis/ui/components/options_bar_item/suite_option_item_button.dart';
// import 'package:segmento_de_moteis/ui/components/options_bar_item/suite_options_bar.dart';
// import 'package:segmento_de_moteis/utils/constants/theme.dart';
//
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});
//
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   late Size mediaSize;
//
//   @override
//   Widget build(BuildContext context) {
//     mediaSize = MediaQuery.of(context).size;
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         backgroundColor: AppTheme.mainRed,
//         appBar: CustomAppBar(height: 110),
//         body: Padding(
//           padding: const EdgeInsets.only(top: 0.0),
//           child: Column(
//             children: [
//               Expanded(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
//                   child: Stack(
//                     children: [
//                       Positioned(
//                         top: 0,
//                         bottom: 0,
//                         child: Container(
//                           color: Colors.orange,
//                           width: mediaSize.width,
//                         ),
//                       ),
//                       TabBarView(
//                         children: [
//                           Column(
//                             children: [
//                               Expanded(
//                                 child: CustomScrollView(
//                                   slivers: [
//                                     SliverToBoxAdapter(
//                                       child: Container(
//                                         height: 200,
//                                         color: AppTheme.mainTopGrey,
//                                         child: Padding(
//                                           padding: const EdgeInsets.all(12.0),
//                                           child: Container(
//                                             height: 160,
//                                             decoration: BoxDecoration(
//                                               color: AppTheme.mainWhite,
//                                               borderRadius: BorderRadius.all(
//                                                 Radius.circular(12),
//                                               ),
//                                             ),
//                                             child: Padding(
//                                               padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
//                                               child: Flexible(
//                                                 child: Row(
//                                                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                   children: [
//                                                     Container(
//                                                       width: mediaSize.width / 2.3,
//                                                       height: mediaSize.width / 2.3,
//                                                       decoration: BoxDecoration(
//                                                         color: Colors.orange,
//                                                         borderRadius: BorderRadius.all(
//                                                           Radius.circular(8),
//                                                         ),
//                                                       ),
//                                                     ),
//                                                     SizedBox(
//                                                       width: 12,
//                                                     ),
//                                                     SizedBox(
//                                                       width: mediaSize.width / 2.3,
//                                                       height: mediaSize.width / 2.3,
//                                                       child: Column(
//                                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                                         mainAxisAlignment: MainAxisAlignment.center,
//                                                         children: [
//                                                           Row(
//                                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                                             children: [
//                                                               Column(
//                                                                 children: [
//                                                                   Padding(
//                                                                     padding: const EdgeInsets.only(top: 4.0),
//                                                                     child: Icon(Icons.local_fire_department, color: Colors.orange,),
//                                                                   )
//                                                                 ],
//                                                               ),
//                                                               Padding(
//                                                                 padding: const EdgeInsets.symmetric(horizontal: 4.0),
//                                                                 child: Column(
//                                                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                                                   children: [
//                                                                     Text('nome motel', style: TextStyle(color: Colors.black, fontSize: 16, )),
//                                                                     Text('local'),
//                                                                   ],
//                                                                 ),
//                                                               ),
//                                                             ],
//                                                           ),
//                                                           SizedBox(
//                                                             height: 10,
//                                                           ),
//                                                           Align(
//                                                             alignment: Alignment.center,
//                                                             child: Container(
//                                                                 decoration: BoxDecoration(
//                                                                   // color: Colors.orange,
//                                                                   color: AppTheme.mainBackgorundColor,
//                                                                   borderRadius: BorderRadius.all(
//                                                                     Radius.circular(8),
//                                                                   ),
//                                                                 ),
//                                                               width: double.infinity,
//                                                                 child: Column(
//                                                               children: [
//                                                                 Text('30% de desconto',  style: TextStyle(color: Colors.black, fontSize: 16, decoration: TextDecoration.underline)),
//                                                                 Divider(color: AppTheme.mainWhite, endIndent: 30, indent: 30,thickness: 3, height: 6,),
//                                                                 Text('teste'),
//                                                                 SizedBox(height: 8,),
//                                                                 Container(
//                                                                   height: 30,
//                                                                   decoration: BoxDecoration(
//                                                                     color: Colors.green,
//                                                                     borderRadius: BorderRadius.all(
//                                                                       Radius.circular(5),
//                                                                     ),
//                                                                   ),
//                                                                   width: double.infinity,
//                                                                   child: Row(
//                                                                     mainAxisAlignment: MainAxisAlignment.center,
//                                                                     children: [
//                                                                       Text('reservar', style: TextStyle(color: Colors.white, fontSize: 14),),
//                                                                       SizedBox(width: 10,),
//                                                                       Icon(Icons.arrow_forward_ios_outlined, color: Colors.white, size: 10,)
//                                                                     ],
//                                                                   ),
//                                                                 ),
//                                                               ],
//                                                             )),
//                                                           ),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     SuiteOptionsBar(),
//                                     SliverToBoxAdapter(
//                                       child: Column(
//                                         children: [
//                                           Container(
//                                             height: 200,
//                                             // color: AppTheme.mainBackgorundColor,
//                                             color: Colors.orange,
//                                           ),
//                                           Container(
//                                             height: 200,
//                                             color: Colors.pink,
//                                           ),
//                                           Container(
//                                             height: 200,
//                                             color: Colors.yellow,
//                                           ),
//                                           Container(
//                                             height: 200,
//                                             color: Colors.green,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               )
//                             ],
//                           ),
//                           Center(
//                             child: Text('teste'),
//                           )
//                         ],
//                       ),
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
import 'package:segmento_de_moteis/ui/components/custom_app_bar.dart';
import 'package:segmento_de_moteis/ui/components/options_bar_item/suite_option_item_button.dart';
import 'package:segmento_de_moteis/ui/components/options_bar_item/suite_options_bar.dart';
import 'package:segmento_de_moteis/ui/components/top_discounts/top_discounts.dart';
import 'package:segmento_de_moteis/utils/constants/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppTheme.mainRed,
        appBar: CustomAppBar(height: 110),
        body: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 0,
                        child: Container(
                          color: Colors.orange,
                          width: mediaSize.width,
                        ),
                      ),
                      TabBarView(
                        children: [
                          Column(
                            children: [
                              Expanded(
                                child: CustomScrollView(
                                  slivers: [
                                    TopDiscounts(mediaSize: mediaSize),
                                    SuiteOptionsBar(),
                                    SliverToBoxAdapter(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 200,
                                            color: AppTheme.mainBackgorundColor,
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
                                              child: Column(
                                                children: [
                                                  Row(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          CircleAvatar(
                                                            backgroundColor: Colors.red,
                                                            radius: 18,
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                                                            child: Column(
                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                              children: [
                                                                Text('nome motel', style: TextStyle(color: Colors.black, fontSize: 24, height: 0 ),),
                                                                Text('local', style: TextStyle(height: 0),),
                                                                Row(
                                                                  children: [
                                                                Padding(
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
                                                                        Icon(Icons.star),
                                                                        SizedBox(
                                                                          width: 8,
                                                                        ),
                                                                        Text(
                                                                          'text',
                                                                          style: TextStyle(fontSize: 12),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Icon(Icons.favorite, size: 30, color: Colors.grey,)
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 200,
                                            color: Colors.pink,
                                          ),
                                          Container(
                                            height: 200,
                                            color: Colors.yellow,
                                          ),
                                          Container(
                                            height: 200,
                                            color: Colors.green,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Center(
                            child: Text('teste'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
