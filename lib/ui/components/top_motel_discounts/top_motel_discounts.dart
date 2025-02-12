import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
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
      child: Container(
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
                  itemCount: 5,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.greyItemBackground,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Expanded(
                            child: SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 0),
                                            child: Icon(
                                              Icons.local_fire_department,
                                              color: AppColors.yellow,
                                            ),
                                          )
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('nome motel',
                                                style: TextStyle(
                                                  height: 0.8,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                                strutStyle: StrutStyle(
                                                  height: 0.5,
                                                  leading: 0.5,
                                                )),
                                            Text(
                                              'local do motel',
                                              style: TextStyle(height: 0.8),
                                              strutStyle: StrutStyle(
                                                height: 0.5,
                                                leading: 0.5,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.lightGreyBackground,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(8),
                                        ),
                                      ),
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Text(
                                            '30% de desconto',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                              decoration: TextDecoration.underline,
                                            ),
                                          ),
                                          Divider(
                                            color: AppColors.white,
                                            endIndent: 30,
                                            indent: 30,
                                            thickness: 3,
                                            height: 6,
                                          ),
                                          Text('a partir de R\$86,59'),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              color: AppColors.green,
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(5),
                                              ),
                                            ),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'reservar',
                                                  style: TextStyle(
                                                      height: 0.1,
                                                      color: AppColors.white,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.bold),
                                                  strutStyle: StrutStyle(
                                                    height: 0.1,
                                                    leading: 0.1,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Icon(
                                                  Icons.arrow_forward_ios_outlined,
                                                  color: AppColors.white,
                                                  size: 10,
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10),
              child: AnimatedSmoothIndicator(
                activeIndex: activadetIndex,
                count: 5,
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
          ],
        ),
      ),
    );
  }
}
