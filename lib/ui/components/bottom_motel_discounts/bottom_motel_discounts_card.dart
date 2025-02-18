import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:segmento_de_moteis/domain/entities/motel.dart';
import 'package:segmento_de_moteis/domain/entities/suite.dart';
import 'package:segmento_de_moteis/domain/entities/suite_period.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class BottomMotelDiscountsCard extends StatefulWidget {
  final Motel motel;
  final ScrollController scrollController;

  const BottomMotelDiscountsCard({super.key, required this.motel, required this.scrollController});

  @override
  State<BottomMotelDiscountsCard> createState() => _BottomMotelDiscountsCardState();
}

class _BottomMotelDiscountsCardState extends State<BottomMotelDiscountsCard> {
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    SuitePeriod suitePeriod = suitePeriodWithLowestPriceWithDiscount(widget.motel);
    double suiteValue = suitePeriod.totalValue;
    double percentageDiscount = ((suitePeriod.value - suitePeriod.totalValue) / suitePeriod.value) * 100;
    Suite suite = suiteWithLowestPriceWithDiscount(widget.motel);
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: mediaSize.width / 1,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(suite.photo),
              fit: BoxFit.fitHeight,
            ),
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${percentageDiscount.toStringAsFixed(0)}% de desconto',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          // decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        widget.motel.name,
                          style: TextStyle(
                            height: 0.8,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          strutStyle: StrutStyle(
                            height: 0.5,
                            leading: 0.5,
                          ),
                      ),
                      Text(
                        widget.motel.neighborhood,
                        style: TextStyle(height: 0.8, fontSize: 12),
                        strutStyle: StrutStyle(
                          height: 0.5,
                          leading: 0.5,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 38,
                        decoration: BoxDecoration(
                          color: AppColors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        width: 100,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'reservar',
                              style: TextStyle(
                                  height: 0.1, color: AppColors.white, fontSize: 18, fontWeight: FontWeight.bold),
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
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'a partir de ${formatValue(suiteValue)}',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  SuitePeriod suitePeriodWithLowestPriceWithDiscount(Motel motel) {
    return motel.suites
        .expand((suite) => suite.periods)
        .where((period) => period.discount != null)
        .reduce((a, b) => a.discount! < b.discount! ? a : b);
  }

  Suite suiteWithLowestPriceWithDiscount(Motel motel) {
    return motel.suites.firstWhere(
      (suite) => suite.periods.contains(suitePeriodWithLowestPriceWithDiscount(motel)),
    );
  }

  String formatValue(double value) {
    return NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(value);
  }
}
