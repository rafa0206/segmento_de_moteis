import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:segmento_de_moteis/domain/entities/motel.dart';
import 'package:segmento_de_moteis/domain/entities/suite.dart';
import 'package:segmento_de_moteis/domain/entities/suite_period.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class TopMotelDiscountsCard extends StatefulWidget {
  final Motel motel;

  const TopMotelDiscountsCard({super.key, required this.motel});

  @override
  State<TopMotelDiscountsCard> createState() => _TopMotelDiscountsCardState();
}

class _TopMotelDiscountsCardState extends State<TopMotelDiscountsCard> {

  @override
  Widget build(BuildContext context) {
    SuitePeriod suitePeriod = suitePeriodWithLowestPriceWithDiscount(widget.motel);
    double suiteValue = suitePeriod.totalValue;
    double percentageDiscount = ((suitePeriod.value - suitePeriod.totalValue) / suitePeriod.value) * 100;
    Suite suite = suiteWithLowestPriceWithDiscount(widget.motel);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(suite.photo),
                  fit: BoxFit.fill,
                ),
                color: Colors.transparent,
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
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.motel.name,
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
                            widget.motel.neighborhood,
                            style: TextStyle(height: 0.8, fontSize: 12),
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
                          '${percentageDiscount.toStringAsFixed(0)}% de desconto',
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
                        Text(
                          'a partir de ${formatValue(suiteValue!)}',
                          style: TextStyle(fontSize: 12),
                        ),
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
                                    height: 0.1, color: AppColors.white, fontSize: 14, fontWeight: FontWeight.bold),
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
        ],
      ),
    );
  }

  SuitePeriod suitePeriodWithLowestPriceWithDiscount(Motel motel){
    return motel.suites
        .expand((suite) => suite.periods)
        .where((period) => period.discount != null)
        .reduce((a, b) => a.discount! < b.discount! ? a : b);
  }


  Suite suiteWithLowestPriceWithDiscount(Motel motel){
    return motel.suites.firstWhere(
          (suite) => suite.periods.contains(suitePeriodWithLowestPriceWithDiscount(motel)),
    );
  }

  String formatValue(double value) {
    return NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(value);
  }

}
