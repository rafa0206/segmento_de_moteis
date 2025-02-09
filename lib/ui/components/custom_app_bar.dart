// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/ui/components/location_button.dart';
import 'package:segmento_de_moteis/ui/components/tab_item.dart';
import 'package:segmento_de_moteis/utils/constants/theme.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{

  final double height;

  const CustomAppBar({
    super.key,
    required this.height,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _CustomAppBarState extends State<CustomAppBar> {
  late Color _iconColorFirstTab = AppTheme.mainRed;
  late Color _iconColorSecondTab = AppTheme.mainWhite;
  late int _index = 0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 110,
      automaticallyImplyLeading: false,
      backgroundColor: AppTheme.mainRed,
      centerTitle: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.menu_outlined, color: AppTheme.mainWhite,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          color: AppTheme.mainDarkRed),
                      child: TabBar(
                        onTap: (value){
                          if(value == 0){
                            setState(() {
                              _iconColorFirstTab = AppTheme.mainRed;
                              _iconColorSecondTab = AppTheme.mainWhite;
                              _index = value;
                            });
                          }else if(value == 1){
                            setState(() {
                              _iconColorSecondTab = AppTheme.mainRed;
                              _iconColorFirstTab = AppTheme.mainWhite;
                              _index = value;
                            });
                          }
                        },
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.white,
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                            color: AppTheme.mainWhite,
                            borderRadius: BorderRadius.all(Radius.circular(18))
                        ),
                        overlayColor: WidgetStateProperty.all<Color>(AppTheme.mainRed),
                        tabs: [
                          TabItem(icon: Icon(Icons.flash_on_rounded, color: _iconColorFirstTab,), title: 'ir agora'),
                          TabItem(icon: Icon(Icons.calendar_month_outlined, color: _iconColorSecondTab,), title: 'ir outro dia')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Icon(Icons.search, color: AppTheme.mainWhite,),
            ],
          ),
          _index == 0 ?
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:10),
              child: LocationButton(),
            ),
          ) :
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
