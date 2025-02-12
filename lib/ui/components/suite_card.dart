import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/domain/entities/suite.dart';
import 'package:segmento_de_moteis/ui/components/suite/suite_itens.dart';
import 'package:segmento_de_moteis/ui/components/suite/suite_period_card.dart';
import 'package:segmento_de_moteis/ui/components/suite/suite_title.dart';

class SuiteCard extends StatefulWidget {
  final Suite suite;
  final ScrollController scrollController;

  const SuiteCard({
    super.key,
    required this.suite,
    required this.scrollController
  });

  @override
  State<SuiteCard> createState() => _SuiteCardState();
}

class _SuiteCardState extends State<SuiteCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          SuiteTitle(suite: widget.suite),
          SuiteItens(suite: widget.suite),
          ListView.builder(
            controller: widget.scrollController,
            shrinkWrap: true,
            itemCount: widget.suite.periods.length,
            itemBuilder: (context, index) {
              return SuitePeriodCard(suitePeriod: widget.suite.periods[index]);
            },
          ),
        ],
      )
    );
  }
}
