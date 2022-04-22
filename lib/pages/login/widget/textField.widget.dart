import 'package:flutter/material.dart';
import 'package:list_of_companies/utils/utils.dart';

Widget textFieldWidget({
  @required BuildContext? context,
  @required String? labelText,
  bool? suffixIcon = false,
}) {
  return Container(
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(
            left: 4,
            bottom: 4,
          ),
          child: Text(
            labelText as String,
            style: TextStyle(
              color: IoasysColors.textColor,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        TextField(
          style: TextStyle(
            color: MediaQuery.of(context as BuildContext).platformBrightness ==
                    Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
          decoration: InputDecoration(
            suffixIcon: suffixIcon as bool
                ? Icon(
                    Icons.remove_red_eye,
                    color: IoasysColors.textColor,
                  )
                : const SizedBox(
                    height: 0,
                    width: 0,
                  ),
            fillColor:
                MediaQuery.of(context).platformBrightness == Brightness.dark
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
                color:
                    MediaQuery.of(context).platformBrightness == Brightness.dark
                        ? IoasysColorsDark.error
                        : IoasysColors.error,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ],
    ),
  );
}
