import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/domain/entities/motel.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class MotelTitleInfo extends StatelessWidget {

  final Motel motel;

  const MotelTitleInfo({
    super.key,
    required this.motel
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(motel.logo),
              backgroundColor: Colors.transparent,
              radius: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    motel.name,
                    style: TextStyle(
                      fontSize: 24, height: 0.8,
                    ),
                    strutStyle: StrutStyle(
                      height: 0.5,
                      leading: 0.5,
                    ),
                  ),
                  Text(
                    motel.neighborhood,
                    style: TextStyle(height: 0.8),
                    strutStyle: StrutStyle(
                      height: 0.5,
                      leading: 1.2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            border: Border.all(
                              color: AppColors.yellow,
                              width: 1.0,
                            ),
                          ),
                          height: 20,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 4.0),
                              child: Row(
                                children: [
                                  Icon(Icons.star, color: AppColors.yellow, size: 14,),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    motel.media.toString(),
                                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Row(
                          children: [
                            Text(
                              '${motel.numberOfReviews} avaliações',
                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Icon(Icons.keyboard_arrow_down_rounded, size: 16,),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        Icon(
          Icons.favorite,
          size: 30,
          color: AppColors.greyIcon,
        )
      ],
    );
  }
}
