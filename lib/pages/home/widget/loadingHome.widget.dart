import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget loadingHomeWidget({
  BuildContext? context,
  double? height,
  double? width,
}) {
  return SizedBox(
    height: MediaQuery.of(context as BuildContext).viewInsets.bottom == 0
        ? height! - 200
        : height! - 112,
    child: Center(
      child: Lottie.asset(
        'assets/loading/loading.json',
        repeat: true,
        reverse: true,
        height: height / width! * 40,
      ),
    ),
  );
}
