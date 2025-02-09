import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/ui/components/options_bar_item/suite_option_item_button.dart';
import 'package:segmento_de_moteis/utils/constants/theme.dart';

class SuiteOptionsBar extends StatelessWidget {
  const SuiteOptionsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 60,
      centerTitle: true,
      surfaceTintColor:
      AppTheme.mainBackgorundColor,
      backgroundColor:
      AppTheme.mainBackgorundColor,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        centerTitle: true,
        title: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding:
              const EdgeInsets.symmetric(
                  horizontal: 10.0),
              child: Row(
                children: [
                  SuiteOptionItemButton(text: 'filtros', icon: Icon(Icons.menu, size: 18,),),
                  SuiteOptionItemButton(text: 'com desconto',),
                  SuiteOptionItemButton(text: 'com desconto',),
                  SuiteOptionItemButton(text: 'com desconto',),
                  SuiteOptionItemButton(text: 'com desconto',),
                  SuiteOptionItemButton(text: 'com desconto',),
                  SuiteOptionItemButton(text: 'com desconto',),
                  SuiteOptionItemButton(text: 'com desconto',),
                  SuiteOptionItemButton(text: 'com desconto',),
                  SuiteOptionItemButton(text: 'com desconto',),
                ],
              ),
            ),
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppTheme.mainDividerGrey,
                // Border color
                width: 2, // Border width
              ),
            ),
          ),
        ),
      ),
      pinned: true,
    );
  }
}
