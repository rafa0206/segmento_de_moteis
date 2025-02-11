class SuiteCategoryItem {

  final String name;
  final String icon;

  SuiteCategoryItem({
    required this.name,
    required this.icon,
  });

  factory SuiteCategoryItem.fromJson(Map<String, dynamic> json) {
    return SuiteCategoryItem(
      name: json['nome'] as String,
      icon: json['icone'] as String,
    );
  }

}