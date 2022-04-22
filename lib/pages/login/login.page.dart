import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:list_of_companies/pages/login/controller/controller.dart';
import 'package:list_of_companies/pages/login/widget/loading.widget.dart';
import 'widget/appBar.widget.dart';
import 'widget/button.widget.dart';
import 'widget/textField.widget.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final loginController = GetIt.I<Controller>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Observer(
      builder: (_) => Stack(
        children: [
          Scaffold(
            appBar: appBarCustom(
              context: context,
              width: width,
              height: height,
            ),
            backgroundColor: Theme.of(context).colorScheme.background,
            body: ListView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              children: [
                textFieldWidget(
                  context: context,
                  labelText: "Email",
                ),
                const SizedBox(
                  height: 16,
                ),
                textFieldWidget(
                  context: context,
                  labelText: "Senha",
                  suffixIcon: true,
                ),
                const SizedBox(
                  height: 24,
                ),
                buttonWidget(),
              ],
            ),
          ),
          loginController.loading
              ? loadingWidget(
                  height: height,
                  width: width,
                )
              : Container(),
        ],
      ),
    );
  }
}
