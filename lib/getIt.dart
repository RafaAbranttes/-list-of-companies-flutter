// ignore_for_file: file_names
import 'package:get_it/get_it.dart';
import 'package:list_of_companies/pages/initial/controller/initial.controller.dart';
import 'package:list_of_companies/pages/login/controller/controller.dart';
import 'package:list_of_companies/pages/login/model/user.model.dart';

GetIt serviceLocator = GetIt.I;

void configServiceLocator() {
  serviceLocator.registerLazySingleton<InitialController>(
    () => InitialController(),
  );
  serviceLocator.registerLazySingleton<Controller>(
    () => Controller(),
  );
  serviceLocator.registerLazySingleton<UserModel>(
    () => UserModel(),
  );
}
