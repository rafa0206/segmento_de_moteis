import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/domain/entities/suite.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class SuiteTitle extends StatefulWidget {

  final Suite suite;

  const SuiteTitle({super.key, required this.suite});

  @override
  State<SuiteTitle> createState() => _SuiteTitleState();
}

class _SuiteTitleState extends State<SuiteTitle> {
  late Size mediaSize;

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: mediaSize.width / 1.85,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.suite.photo),
                    fit: BoxFit.fill,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                child: widget.suite.displayQuantity == true
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.suite.name,
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.suite.name,
                            style: TextStyle(fontSize: 22),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 5.0),
                                child: Icon(
                                  Icons.notifications_active_sharp,
                                  color: AppColors.red,
                                  size: 15,
                                ),
                              ),
                              Text(
                                'só mais ${widget.suite.quantity} pelo app',
                                style: TextStyle(fontSize: 12, color: AppColors.red, fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
