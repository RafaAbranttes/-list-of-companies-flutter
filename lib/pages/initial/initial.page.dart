import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:list_of_companies/routes/routes.dart';
import 'package:list_of_companies/store/store.dart';
import 'package:lottie/lottie.dart';

class InitialPage extends StatelessWidget {
  InitialPage({Key? key}) : super(key: key);
  final loginController = GetIt.I<LoginStore>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Observer(
      builder: (context) {
        if (!loginController.isLoggedIn) {
          SchedulerBinding.instance?.addPostFrameCallback((_) {
            Navigator.of(context).pushReplacementNamed(Routes.login);
          });
        }

        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          body: SizedBox(
            height: height,
            width: width,
            child: Stack(
              children: [
                Image.asset(
                  "assets/splash_screen/splash_screen_background.png",
                  fit: BoxFit.cover,
                  height: height,
                ),
                Center(
                  child: Lottie.asset(
                    'assets/loading/loading.json',
                    repeat: true,
                    reverse: true,
                    height: height / width * 40,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
