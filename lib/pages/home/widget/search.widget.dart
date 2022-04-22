import 'package:flutter/material.dart';
import 'package:list_of_companies/utils/utils.dart';

Widget searchWidget({
  @required BuildContext? context,
}) {
  return SizedBox(
    height: 48,
    child: TextField(
      style: TextStyle(
        color: IoasysColors.textColor,
        fontSize: 18,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        label: Text(
          "Pesquise por empresa",
          style: TextStyle(
            color: IoasysColors.textColor,
            fontSize: 18,
            fontWeight: FontWeight.w300,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        isDense: true, // Added this
        contentPadding: const EdgeInsets.all(8), // Added this
        prefixIcon: Icon(
          Icons.search,
          size: 20,
          color: IoasysColors.textColor,
        ),
        fillColor: MediaQuery.of(context as BuildContext).platformBrightness ==
                Brightness.dark
            ? IoasysColorsDark.formFieldBackground
            : IoasysColors.formFieldBackground,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 0, color: Colors.transparent),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: MediaQuery.of(context).platformBrightness == Brightness.dark
                ? IoasysColorsDark.error
                : IoasysColors.error,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
  );
}
