import 'package:flutter_test/flutter_test.dart';
import 'package:segmento_de_moteis/domain/entities/motel.dart';
import 'package:segmento_de_moteis/domain/entities/suite.dart';
import 'package:segmento_de_moteis/domain/entities/suite_category_item.dart';
import 'package:segmento_de_moteis/domain/entities/suite_period.dart';

main() {
  late Motel motel;

  setUp(() {
    motel = Motel(
      name: "Motel Le Nid",
      logo: "https://cdn.guiademoteis.com.br/imagens/logotipos/3148-le-nid.gif",
      neighborhood: "Chácara Flora - São Paulo",
      suites: [
        Suite(
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
        ),
        Suite(
            name: "Suíte Marselha Sexy",
            quantity: 1,
            displayQuantity: true,
            photo: "https://cdn.guiademoteis.com.br/Images/moteis/3148-Motel-Le-Nid/suites/17418-Marselha-Sexy/fotos/64838168-0e40-4087-bc99-445ee4a0754b-suites.jpg",
            categoryItens: [
              SuiteCategoryItem(name: "Decoração Erótica", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/decoracao-erotica-30-10-2023-11-43.png"),
              SuiteCategoryItem(name: "Decoração Temática", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/decoracao-tematica-22-08-2018-11-40.png"),
              SuiteCategoryItem(name: "Pole Dance", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/pole-dance-15-05-2020-10-49.png"),
              SuiteCategoryItem(name: "Frigobar", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/frigobar-04-09-2018-12-14.png"),
              SuiteCategoryItem(name: "Ar-Condicionado", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/arcondicionado-04-09-2018-12-13.png"),
              SuiteCategoryItem(name: "Internet Wi-Fi", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/internet-wifi-22-08-2018-11-42.png"),
              SuiteCategoryItem(name: "Secador de Cabelo", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/secador-de-cabelo-04-09-2018-12-14.png"),
            ],
            periods: [
              SuitePeriod(formattedTime: "3 horas", value: 129.0, totalValue: 129.0),
              SuitePeriod(formattedTime: "6 horas", value: 162.0, totalValue: 162.0),
              SuitePeriod(formattedTime: "12 horas", value: 184.0, totalValue: 115.6, discount: 68.4),
            ],
        ),
        Suite(
            name: "Suíte Nantes s/ garagem privativa",
            quantity: 2,
            displayQuantity: true,
            photo: "https://cdn.guiademoteis.com.br/imagens/suites/big/3148_big_9828_2.jpg",
            categoryItens: [
              SuiteCategoryItem(name: "Hidro", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/hidro-22-08-2018-11-37.png"),
              SuiteCategoryItem(name: "Frigobar", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/frigobar-04-09-2018-12-14.png"),
              SuiteCategoryItem(name: "Ar-Condicionado", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/arcondicionado-04-09-2018-12-13.png"),
              SuiteCategoryItem(name: "Internet Wi-Fi", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/internet-wifi-22-08-2018-11-42.png"),
              SuiteCategoryItem(name: "Secador de Cabelo", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/secador-de-cabelo-04-09-2018-12-14.png"),
            ],
            periods: [
              SuitePeriod(formattedTime: "3 horas", value: 116.0, totalValue: 116.0),
              SuitePeriod(formattedTime: "6 horas", value: 145.0, totalValue: 145.0),
              SuitePeriod(formattedTime: "12 horas", value: 186.0, totalValue: 116.8, discount: 69.2),
            ],
        ),
      ],
      numberOfReviews: 2159,
      media: 4.6,
    );
  });

  test('Motel deve poder ser instancado com os valores mockados da api', (){
    expect(motel.runtimeType == Motel, true);
  });

}
