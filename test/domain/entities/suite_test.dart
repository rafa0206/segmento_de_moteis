import 'package:flutter_test/flutter_test.dart';
import 'package:segmento_de_moteis/domain/entities/suite.dart';
import 'package:segmento_de_moteis/domain/entities/suite_category_item.dart';
import 'package:segmento_de_moteis/domain/entities/suite_period.dart';

main() {

  test('Classe Suite deve poder ser instancada com os valores da api', (){

    final suite = Suite(
      name: "Suíte Marselha s/ garagem privativa",
      quantity: 1,
      displayQuantity: true,
      photo: "https://cdn.guiademoteis.com.br/imagens/suites/big/3148_big_9827_1.jpg",
      categoryItens: [
        SuiteCategoryItem(name: "Frigobar", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/frigobar-04-09-2018-12-14.png"),
        SuiteCategoryItem(name: "Ar-Condicionado", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/arcondicionado-04-09-2018-12-13.png"),
        SuiteCategoryItem(name: "Internet Wi-Fi", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/internet-wifi-22-08-2018-11-42.png"),
        SuiteCategoryItem(name: "Secador de Cabelo", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/secador-de-cabelo-04-09-2018-12-14.png"),
      ],
      periods: [
        SuitePeriod(formattedTime: "3 horas", value: 88.0, totalValue: 88.0),
        SuitePeriod(formattedTime: "6 horas", value: 101.0, totalValue: 101.0),
        SuitePeriod(formattedTime: "12 horas", value: 129.58, totalValue: 81.58, discount: 48.0),
      ],
    );

    expect(suite.runtimeType == Suite, true);
    expect(suite.name == "Suíte Marselha s/ garagem privativa", true);
    expect(suite.displayQuantity == true, true);
    expect(suite.categoryItens[0].name == "Frigobar", true);
    expect(suite.periods[0].formattedTime == "3 horas", true);
    expect(suite.periods[0].value == 88.0, true);

  });

}