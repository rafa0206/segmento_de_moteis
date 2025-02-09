import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/utils/constants/theme.dart';

class TopDiscounts extends StatefulWidget {
  final Size mediaSize;

  const TopDiscounts({super.key, required this.mediaSize});

  @override
  State<TopDiscounts> createState() => _TopDiscountsState();
}

class _TopDiscountsState extends State<TopDiscounts> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: widget.mediaSize.width / 1.9,
        color: AppTheme.mainTopGrey,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 160,
            decoration: BoxDecoration(
              color: AppTheme.mainWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 12),
              child: Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: widget.mediaSize.width / 2.3,
                      height: widget.mediaSize.width / 2.3,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    SizedBox(
                      width: widget.mediaSize.width / 2.3,
                      height: widget.mediaSize.width / 2.3,
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
                                    padding: const EdgeInsets.only(top: 4.0),
                                    child: Icon(Icons.local_fire_department, color: Colors.orange,),
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('nome motel', style: TextStyle(color: Colors.black, fontSize: 16, )),
                                    Text('local'),
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
                                  // color: Colors.orange,
                                  color: AppTheme.mainBackgorundColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    SizedBox(height: 8,),
                                    Text('30% de desconto',  style: TextStyle(color: Colors.black, fontSize: 16, decoration: TextDecoration.underline)),
                                    Divider(color: AppTheme.mainWhite, endIndent: 30, indent: 30,thickness: 3, height: 6,),
                                    Text('teste'),
                                    SizedBox(height: 8,),
                                    Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        ),
                                      ),
                                      width: double.infinity,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text('reservar', style: TextStyle(color: Colors.white, fontSize: 14),),
                                          SizedBox(width: 10,),
                                          Icon(Icons.arrow_forward_ios_outlined, color: Colors.white, size: 10,)
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}