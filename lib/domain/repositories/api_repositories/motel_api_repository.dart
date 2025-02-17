import 'package:segmento_de_moteis/data/api/motel_api.dart';
import 'package:segmento_de_moteis/domain/entities/motel.dart';

abstract class MotelApiRepository {

  Future<List<Motel>?>? getMotels(MotelApi? motelApi);

}