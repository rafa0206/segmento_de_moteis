import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:segmento_de_moteis/controller/motel_controller.dart';
import 'package:segmento_de_moteis/ui/components/bottom_motel_discounts/bottom_motel_discounts_card.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class BottomMotelDiscounts extends StatefulWidget {
  final Size mediaSize;
  final ScrollController scrollController;

  const BottomMotelDiscounts({super.key, required this.mediaSize, required this.scrollController});

  @override
  State<BottomMotelDiscounts> createState() => _BottomMotelDiscountsState();
}

class _BottomMotelDiscountsState extends State<BottomMotelDiscounts> {

  int activadetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Consumer<MotelController>(
          builder: (BuildContext context, MotelController motelController, Widget? widgett) {
            return FutureBuilder(
                future: motelController.futureMotelsWithDiscount,
                builder: (context, snapshot) {
                  switch (snapshot.connectionState) {
                    case ConnectionState.none:
                      return Container();
                    case ConnectionState.waiting:
                      return Container();
                    default:
                      if (snapshot.hasError) {
                        return Container();
                      } else if (!snapshot.hasData) {
                        return Container();
                      } else if (snapshot.data!.isEmpty) {
                        return Container();
                      } else {
                        return Container(
                          color: AppColors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 24),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 0),
                                        child: Icon(
                                          size: 35,
                                          Icons.local_fire_department,
                                          color: AppColors.yellow,
                                        ),
                                      ),
                                      Text('descontos incríveis', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold) ,),
                                    ],
                                  ),
                                ),
                                ExpandablePageView.builder(
                                  controller: PageController(viewportFraction: 0.88),
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    return BottomMotelDiscountsCard(
                                      motel: snapshot.data![index],
                                      scrollController: widget.scrollController,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        );
                      }
                  }
                });
          }),
    );
  }
}
