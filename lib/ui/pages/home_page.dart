import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/data/api/motel_api.dart';
import 'package:segmento_de_moteis/ui/components/top_bar/top_bar.dart';
import 'package:segmento_de_moteis/ui/pages/go_now_page.dart';
import 'package:segmento_de_moteis/ui/pages/go_other_day_page.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';

class HomePage extends StatefulWidget {

  static const String id = 'home_page';

  const HomePage({required this.motelApi, super.key});

  final MotelApi motelApi;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  late Size mediaSize;
  late TabController controller;

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton.extended(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            backgroundColor: AppColors.white,
              label: Text('mapa', style: TextStyle(
                color: AppColors.red,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),),
              icon: Icon(Icons.map_outlined, color: AppColors.red, size: 20,),
              onPressed: (){}
          ),
        ),
        resizeToAvoidBottomInset: true,
        extendBodyBehindAppBar: false,
        extendBody: false,
        backgroundColor: AppColors.red,
        appBar: TopBar(height: 105),
        body: Padding(
          padding: const EdgeInsets.only(top: 0.0),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        bottom: 0,
                        child: Container(
                          color: AppColors.lightGreyBackground,
                          width: mediaSize.width,
                        ),
                      ),
                      TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          GoNowPage(motelApi: widget.motelApi,),
                          GoOtherDayPage(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
