import 'package:flutter_test/flutter_test.dart';
import 'package:segmento_de_moteis/domain/entities/suite_category_item.dart';

main() {
  test('Classe SuiteCategoryItem deve poder ser instancada com os valores da api', () {
    final suiteCategoryItem = SuiteCategoryItem(
        name: "Frigobar", icon: "https://cdn.guiademoteis.com.br/Images/itens-suites/frigobar-04-09-2018-12-14.png");

    expect(suiteCategoryItem.runtimeType == SuiteCategoryItem, true);
    expect(suiteCategoryItem.name == "Suíte Marselha s/ garagem privativa", true);
    expect(
        suiteCategoryItem.icon == "https://cdn.guiademoteis.com.br/Images/itens-suites/frigobar-04-09-2018-12-14.png",
        true);
  });
}
