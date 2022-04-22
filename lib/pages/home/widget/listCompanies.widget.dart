import 'package:flutter/material.dart';
import 'package:list_of_companies/routes/routes.dart';

Widget listCompaniesWidget({double? width, BuildContext? context}) {
  return ListView.builder(
    primary: false,
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    itemCount: 4,
    itemBuilder: (context, index) => GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(Routes.detail);
      },
      child: Container(
        height: 120,
        width: width as double,
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
          image: DecorationImage(
            image: AssetImage(
              "assets/app_bar/app_bar_home.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/icon_app/teste.png",
            height: 52,
          ),
        ),
      ),
    ),
  );
}
