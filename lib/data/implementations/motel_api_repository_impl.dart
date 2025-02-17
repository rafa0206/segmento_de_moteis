import 'package:segmento_de_moteis/data/api/motel_api.dart';
import 'package:segmento_de_moteis/domain/entities/motel.dart';
import 'package:segmento_de_moteis/domain/repositories/api_repositories/motel_api_repository.dart';

class MotelApiRepositoryImpl implements MotelApiRepository {

  @override
  Future<List<Motel>?>? getMotels(MotelApi? motelApi) {
    return motelApi?.getMotels();
  }

}