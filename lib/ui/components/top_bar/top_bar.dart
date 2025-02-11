import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/ui/components/top_bar/location_button.dart';
import 'package:segmento_de_moteis/ui/components/top_bar/tab_item.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';


class TopBar extends StatefulWidget implements PreferredSizeWidget{

  final double height;

  const TopBar({
    super.key,
    required this.height,
  });

  @override
  State<TopBar> createState() => _TopBarState();

  @override
  Size get preferredSize => Size.fromHeight(height);
}

class _TopBarState extends State<TopBar> {
  late Color _iconColorFirstTab = AppColors.red;
  late Color _iconColorSecondTab = AppColors.white;
  late int _index = 0;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 110,
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.red,
      centerTitle: true,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.menu_outlined, color: AppColors.white,),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(18)),
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(18)),
                          color: AppColors.darkRed),
                      child: TabBar(
                        onTap: (value){
                          if(value == 0){
                            setState(() {
                              _iconColorFirstTab = AppColors.red;
                              _iconColorSecondTab = AppColors.white;
                              _index = value;
                            });
                          }else if(value == 1){
                            setState(() {
                              _iconColorSecondTab = AppColors.red;
                              _iconColorFirstTab = AppColors.white;
                              _index = value;
                            });
                          }
                        },
                        labelColor: AppColors.darkGreyText,
                        unselectedLabelColor: AppColors.white,
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.all(Radius.circular(18))
                        ),
                        overlayColor: WidgetStateProperty.all<Color>(AppColors.red),
                        tabs: [
                          TabItem(icon: Icon(Icons.flash_on_rounded, color: _iconColorFirstTab,), title: 'ir agora'),
                          TabItem(icon: Icon(Icons.calendar_month_outlined, color: _iconColorSecondTab,), title: 'ir outro dia')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Icon(Icons.search, color: AppColors.white,),
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
