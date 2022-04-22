import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:list_of_companies/pages/login/controller/controller.dart';

Widget buttonWidget() {
  final loginController = GetIt.I<Controller>();

  return Container(
    margin: const EdgeInsets.all(20),
    child: ElevatedButton(
      onPressed: () {
        loginController.loading = true;

        Future.delayed(
          const Duration(seconds: 4),
          () {
            loginController.loading = false;
          },
        );
      },
      child: const SizedBox(
        height: 48,
        child: Center(
          child: Text(
            "ENTRAR",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    ),
  );
}
