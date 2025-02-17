import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:segmento_de_moteis/data/api/motel_api.dart';
import 'package:segmento_de_moteis/data/implementations/motel_api_repository_impl.dart';
import 'package:segmento_de_moteis/domain/entities/motel.dart';

class MotelController extends ChangeNotifier {

  Future<List<Motel>?>? futureMotels;

  bool loading = false;
  final MotelApiRepositoryImpl _motelApiRepositoryImpl = MotelApiRepositoryImpl();

  static MotelController of(BuildContext context) {
    return Provider.of<MotelController>(context, listen: false);
  }

  Future<void> getMotels({required MotelApi motelApi}) async {
    loading = true;
    futureMotels = _motelApiRepositoryImpl.getMotels(motelApi);
    loading = false;
    notifyListeners();
  }

}