import 'package:flutter/material.dart';
import 'package:list_of_companies/utils/colors.utils.dart';
import 'package:lottie/lottie.dart';

Widget loadingWidget({
  double? width,
  double? height,
}) {
  return Container(
    color: IoasysColors.loadingLogin,
    height: height as double,
    width: width as double,
    child: Center(
      child: Lottie.asset(
        'assets/loading/loading.json',
        repeat: true,
        reverse: true,
        height: height / width * 40,
      ),
    ),
  );
}
