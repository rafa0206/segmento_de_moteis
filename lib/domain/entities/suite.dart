import 'package:segmento_de_moteis/domain/entities/suite_category_item.dart';
import 'package:segmento_de_moteis/domain/entities/suite_period.dart';

class Suite {

  final String name;
  final int quantity;
  final bool displayQuantity;
  final String photo;
  final List<SuiteCategoryItem> categoryItens;
  final List<SuitePeriod> periods;

  Suite({
    required this.name,
    required this.quantity,
    required this.displayQuantity,
    required this.photo,
    required this.categoryItens,
    required this.periods,
  });

  factory Suite.fromJson(Map<String, dynamic> json) {
    return Suite(
        name: json['nome'] as String,
        quantity: json['qtd'] as int,
        displayQuantity: json['exibirQtdDisponiveis'] as bool,
        photo: json['fotos'][0] as String,
        categoryItens: (json['categoriaItens'] as List).map((json) => SuiteCategoryItem.fromJson(json)).toList(),
        periods: (json['periodos'] as List).map((json) => SuitePeriod.fromJson(json)).toList(),
    );
  }

}
