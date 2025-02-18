import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:segmento_de_moteis/controller/motel_controller.dart';
import 'package:segmento_de_moteis/ui/components/top_motel_discounts/top_motel_discounts_card.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TopMotelDiscounts extends StatefulWidget {
  final Size mediaSize;

  const TopMotelDiscounts({super.key, required this.mediaSize});

  @override
  State<TopMotelDiscounts> createState() => _TopMotelDiscountsState();
}

class _TopMotelDiscountsState extends State<TopMotelDiscounts> {

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
                      height: widget.mediaSize.width / 1.68,
                      color: AppColors.greyDiscountsBackground,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 12.0, left: 12, right: 12),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(12),
                                ),
                              ),
                              child: CarouselSlider.builder(
                                options: CarouselOptions(
                                  aspectRatio: 1.95,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      activadetIndex = index;
                                    });
                                  },
                                  enableInfiniteScroll: false,
                                  viewportFraction: 1,
                                ),
                                itemCount: snapshot.data?.length,
                                itemBuilder: (context, index, realIndex) {
                                  return TopMotelDiscountsCard(motel: snapshot.data![index]);
                                },
                              ),
                            ),
                          ),
                          Visibility(
                            visible: snapshot.data!.length > 1,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
                              child: AnimatedSmoothIndicator(
                                activeIndex: activadetIndex,
                                count: snapshot.data!.length,
                                effect: ScaleEffect(
                                  spacing: 12,
                                  dotHeight: 5,
                                  dotWidth: 5,
                                  scale: 1.8,
                                  activeDotColor: AppColors.greySelectedDot,
                                  dotColor: AppColors.greyDotColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
              }
            });
      }),
    );
  }
}
