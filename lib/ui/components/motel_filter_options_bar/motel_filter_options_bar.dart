import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/ui/components/motel_filter_options_bar/motel_option_item_button.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class MotelFilterOptionsBar extends StatelessWidget {
  const MotelFilterOptionsBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 60,
      centerTitle: true,
      surfaceTintColor:
      AppColors.lightGreyBackground,
      backgroundColor:
      AppColors.lightGreyBackground,
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
                  MotelOptionItemButton(text: 'filtros', icon: Icon(Icons.menu, size: 18,),),
                  MotelOptionItemButton(text: 'com desconto',),
                  MotelOptionItemButton(text: 'disponíveis',),
                  MotelOptionItemButton(text: 'hidro',),
                  MotelOptionItemButton(text: 'piscina',),
                  MotelOptionItemButton(text: 'sauna',),
                  MotelOptionItemButton(text: 'ofurô',),
                  MotelOptionItemButton(text: 'decoração erótica',),
                  MotelOptionItemButton(text: 'decoração temática',),
                  MotelOptionItemButton(text: 'cadeira erótica',),
                  MotelOptionItemButton(text: 'pista de dança',),
                  MotelOptionItemButton(text: 'garagem privativa',),
                  MotelOptionItemButton(text: 'frigobar',),
                  MotelOptionItemButton(text: 'internet wi-fi',),
                  MotelOptionItemButton(text: 'suíte para festas',),
                  MotelOptionItemButton(text: 'suíte com acessibilidade',),
                ],
              ),
            ),
          ),
        ),
        background: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: AppColors.greyDivider,
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