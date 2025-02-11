import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:segmento_de_moteis/domain/entities/suite_period.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class SuitePeriodCard extends StatelessWidget {
  final SuitePeriod suitePeriod;

  const SuitePeriodCard({
    super.key,
    required this.suitePeriod,
  });

  @override
  Widget build(BuildContext context) {
    bool hasDiscount = suitePeriod.discount != null;
    double percentageDiscount = ((suitePeriod.value - suitePeriod.totalValue) / suitePeriod.value) * 100;
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Text(
                            suitePeriod.formattedTime,
                            // '3 horas',
                            style: TextStyle(fontSize: 22),
                          ),
                        ),
                        hasDiscount
                            ? Container(
                                height: 20,
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  border: Border.all(
                                    color: AppColors.green,
                                    width: 1.0,
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                  child: Text(
                                    // '30% off',
                                    '${percentageDiscount.toStringAsFixed(0)} % off',
                                    style: TextStyle(color: AppColors.green, fontSize: 12),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: Text(
                            formatValue(suitePeriod.value),
                            style: TextStyle(
                                fontSize: 22,
                                decoration: hasDiscount ? TextDecoration.lineThrough : TextDecoration.none,
                                color: hasDiscount ? AppColors.greyDiscountText : AppColors.darkGreyText,
                                decorationColor: AppColors.greyDiscountText),
                          ),
                        ),
                        hasDiscount
                            ? Text(
                                formatValue(suitePeriod.totalValue),
                                style: TextStyle(fontSize: 22),
                              )
                            : SizedBox.shrink(),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(
                  color: AppColors.greyArrowIcon,
                  Icons.arrow_forward_ios_rounded,
                  size: 22,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String formatValue(double value) {
    return NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$').format(value);
  }
}
