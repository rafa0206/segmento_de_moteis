import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:segmento_de_moteis/controller/motel_controller.dart';
import 'package:segmento_de_moteis/data/api/motel_api.dart';
import 'package:segmento_de_moteis/ui/components/bottom_motel_discounts/bottom_motel_discounts.dart';
import 'package:segmento_de_moteis/ui/components/motel_card.dart';
import 'package:segmento_de_moteis/ui/components/motel_filter_options_bar/motel_filter_options_bar.dart';
import 'package:segmento_de_moteis/ui/components/top_motel_discounts/top_motel_discounts.dart';
import 'package:segmento_de_moteis/utils/constants/app_colors.dart';
import 'package:segmento_de_moteis/utils/messages/messages.dart';

class GoNowPage extends StatefulWidget {
  static const String id = 'go_now_page';

  const GoNowPage({required this.motelApi, super.key});

  final MotelApi motelApi;

  @override
  State<GoNowPage> createState() => _GoNowPageState();
}

class _GoNowPageState extends State<GoNowPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _reload();
    });
  }

  void _reload() async {
    MotelController.of(context).getMotels(motelApi: widget.motelApi);
    MotelController.of(context).setMotelsWithDiscount();
  }

  final scrollController = ScrollController();
  late Size mediaSize;
  late bool loading = true;

  @override
  Widget build(BuildContext context) {
    mediaSize = MediaQuery.of(context).size;
    return RefreshIndicator(
      color: AppColors.red,
      backgroundColor: AppColors.white,
      onRefresh: () async {
        _reload();
      },
      child: Consumer<MotelController>(
          builder: (BuildContext context, MotelController motelController, Widget? widget) {
            return FutureBuilder(
              future: motelController.futureMotels,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return Center(
                      child: Message.alertMessageNoMotels('Sem sinal'),
                    );
                  case ConnectionState.waiting:
                    return Center(
                      child: Message.loading(context),
                    );
                  default:
                    if (snapshot.hasError) {
                      return Center(
                        child: Message.alertMessageNoMotels('Em manutenção'),
                      );
                    } else if (!snapshot.hasData) {
                      return Message.alertMessageNoMotels('Nenhum motel encontrado');
                    } else if (snapshot.data!.isEmpty) {
                      return Center(child: Message.alertMessageNoMotels('Nenhum motel encontrado'));
                    } else {
                      loading = false;
                      return CustomScrollView(
                        controller: scrollController,
                        slivers: [
                          TopMotelDiscounts(mediaSize: mediaSize),
                          MotelFilterOptionsBar(),
                          SliverToBoxAdapter(
                            child: ListView.builder(
                              controller: scrollController,
                              shrinkWrap: true,
                              itemCount: snapshot.data?.length,
                              itemBuilder: (context, index) {
                                return MotelCard(motel: snapshot.data![index], scrollController: scrollController);
                              },
                            ),
                          ),

                          BottomMotelDiscounts(mediaSize: mediaSize, scrollController: scrollController,),


                        ],

                      );
                    }
                }
              },
            );
          }),
    );
  }
}