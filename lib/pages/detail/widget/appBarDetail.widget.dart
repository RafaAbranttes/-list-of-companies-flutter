import 'package:flutter/material.dart';
import 'package:list_of_companies/utils/utils.dart';

PreferredSizeWidget? appBarDetail({BuildContext? context}) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: MediaQuery.of(context as BuildContext).platformBrightness ==
                  Brightness.dark
              ? IoasysColorsDark.background
              : IoasysColors.formFieldBackground,
          elevation: 0,
          padding: EdgeInsets.zero,
        ),
        child: Icon(
          Icons.arrow_back,
          color: Theme.of(context).colorScheme.primary,
        ),
        onPressed: () => Navigator.of(context).pop(),
      ),
    ),
    elevation: 0,
    centerTitle: true,
    title: Text(
      "Empresa X",
      style: TextStyle(
        color: MediaQuery.of(context).platformBrightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      ),
    ),
    backgroundColor: Theme.of(context).colorScheme.secondary,
  );
}
