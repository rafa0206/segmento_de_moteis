import 'package:get_it/get_it.dart';
import 'package:segmento_de_moteis/data/api/motel_api.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => MotelApi());
}