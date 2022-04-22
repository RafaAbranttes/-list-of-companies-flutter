import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:list_of_companies/getIt.dart';
import 'package:list_of_companies/routes/routes.dart';
import 'package:list_of_companies/storage/storage.dart';
import 'package:list_of_companies/utils/utils.dart';

import 'pages/initial/controller/initial.controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configServiceLocator();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.black,
    ),
  );
  final initialController = GetIt.I<InitialController>();
  initialController.isLoggedIn = await Storage.getIsLoggedIn();
  runApp(
    const MyApp(),
  );
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ioasys',
      theme: themeDataLighCustom(),
      darkTheme: themeDataDarkCustom(),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child ?? Container(),
        );
      },
      routes: routes(),
    );
  }
}
