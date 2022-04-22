import 'package:flutter/material.dart';

import 'customAppBar.widget.dart';

appBarCustom({
  BuildContext? context,
  double? width,
  double? height,
}) {
  return PreferredSize(
    child: ClipPath(
      clipper: CustomAppBar(),
      child: Stack(
        children: [
          Image.asset(
            "assets/app_bar/app_bar.png",
            fit: BoxFit.cover,
            width: width as double,
            height: height as double,
          ),
          SizedBox(
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icon_app/logo.png",
                  height: 40,
                ),
                MediaQuery.of(context as BuildContext).viewInsets.bottom == 0
                    ? Column(
                        children: const [
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Seja bem vindo ao empresas!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                        ],
                      )
                    : const SizedBox(
                        height: 16,
                      ),
              ],
            ),
          ),
        ],
      ),
    ),
    preferredSize: Size.fromHeight(
      MediaQuery.of(context).viewInsets.bottom == 0
          ? kToolbarHeight + 250
          : kToolbarHeight + 100,
    ),
  );
}
