import 'package:flutter/material.dart';
import 'package:segmento_de_moteis/utils/messages/messages.dart';

class GoOtherDayPage extends StatelessWidget {

  static const String id = 'go_another_day_page';

  const GoOtherDayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Message.alertScreenNotComplet('Página em construção(não faz parte do teste)'),
    );
  }
}
