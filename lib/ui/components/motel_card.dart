import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/domain/entities/motel.dart';
import 'package:segmento_de_moteis/ui/components/motel_title_info/motel_title_info.dart';
import 'package:segmento_de_moteis/ui/components/suite_card.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class MotelCard extends StatefulWidget {
  final Motel motel;
  final ScrollController scrollController;

  const MotelCard({super.key, required this.motel, required this.scrollController});

  @override
  State<MotelCard> createState() => _MotelCardState();
}

class _MotelCardState extends State<MotelCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.lightGreyBackground,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: MotelTitleInfo(motel: widget.motel),
            ),
            ExpandablePageView.builder(
              controller: PageController(viewportFraction: 0.88),
              itemCount: widget.motel.suites.length,
              itemBuilder: (context, index) {
                return SuiteCard(
                  suite: widget.motel.suites[index],
                  scrollController: widget.scrollController,
                );
                // return Text('suite teste');
              },
            ),
          ],
        ),
      ),
    );
  }
}
