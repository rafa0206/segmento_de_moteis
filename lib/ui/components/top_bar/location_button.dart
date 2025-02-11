import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/ui/components/top_bar/dashed_line.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.red,
      width: 88,
      height: 40,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 25,
            child: TextButton(
              style: ButtonStyle(
                  padding: WidgetStateProperty.all(EdgeInsets.zero)
              ),
              onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('grande sp', style: TextStyle(color: AppColors.white, fontWeight: FontWeight.bold),),
                  Icon(Icons.keyboard_arrow_down_rounded, size: 25, color: AppColors.white,)
                ],
              ),
            ),
          ),
          DashedLine(color: AppColors.white,),
        ],
      ),
    );
  }
}
