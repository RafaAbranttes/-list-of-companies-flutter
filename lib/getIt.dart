import 'package:get_it/get_it.dart';
import 'package:list_of_companies/store/store.dart';

GetIt serviceLocator = GetIt.I;

void configServiceLocator() {
  serviceLocator.registerLazySingleton<LoginStore>(() => LoginStore());
}
