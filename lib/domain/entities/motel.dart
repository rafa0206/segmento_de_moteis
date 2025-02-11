import 'package:segmento_de_moteis/domain/entities/suite.dart';

class Motel {

  final String name;
  final String logo;
  final String neighborhood;
  final List<Suite> suites;
  final int numberOfReviews;
  final double media;

  Motel({
    required this.name,
    required this.logo,
    required this.neighborhood,
    required this.suites,
    required this.numberOfReviews,
    required this.media,
  });

  factory Motel.fromJson(Map<String, dynamic> json) {
    return Motel(
      name: json['fantasia'] as String,
      logo: json['logo'] as String,
      neighborhood: json['bairro'] as String,
      suites: (json['suites'] as List).map((json) => Suite.fromJson(json)).toList(),
      numberOfReviews: json['qtdAvaliacoes'] as int,
      media: (json['media'] as num).toDouble(),
    );
  }

}