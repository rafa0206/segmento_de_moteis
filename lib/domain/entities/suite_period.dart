class SuitePeriod {

  final String formattedTime;
  final double value;
  final double totalValue;
  final double? discount;

  SuitePeriod({
    required this.formattedTime,
    required this.value,
    required this.totalValue,
    this.discount,
  });

  factory SuitePeriod.fromJson(Map<String, dynamic> json) {
    return SuitePeriod(
      formattedTime: json['tempoFormatado'] as String,
      value: (json['valor'] as num).toDouble(),
      totalValue: (json['valorTotal'] as num).toDouble(),
      discount: (json['desconto']?['desconto'] as num?)?.toDouble(),
    );
  }

}