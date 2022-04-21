import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:list_of_companies/routes/routes.dart';
import 'package:list_of_companies/utils/utils.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ioasys',
      theme: themeDataLighCustom(),
      darkTheme: themeDataDarkCustom(),
      routes: routes(),
    );
  }
}
