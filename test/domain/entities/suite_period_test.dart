import 'package:flutter_test/flutter_test.dart';
import 'package:segmento_de_moteis/domain/entities/suite_period.dart';

main() {
  test('Classe SuitePeriod deve poder ser instancada com os valores da api', () {

    final suitePeriod = SuitePeriod(
        formattedTime: "3 horas",  value: 88.0, totalValue: 88.0);

    expect(suitePeriod.runtimeType == SuitePeriod, true);
    expect(suitePeriod.formattedTime == "3 horas", true);
    expect(suitePeriod.value == 88.0, true);
    expect(suitePeriod.totalValue == 88.0, true);

  });

}
