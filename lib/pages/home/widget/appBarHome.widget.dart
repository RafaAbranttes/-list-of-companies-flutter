import 'package:flutter/material.dart';

import 'search.widget.dart';

appBarHomeCustom({
  BuildContext? context,
  double? width,
  double? height,
}) {
  return PreferredSize(
    child: ClipPath(
      child: Stack(
        children: [
          Image.asset(
            "assets/app_bar/app_bar_home.png",
            fit: BoxFit.cover,
            width: width as double,
            height:
                MediaQuery.of(context as BuildContext).viewInsets.bottom == 0
                    ? 200 - 24
                    : 112 - 24,
          ),
          Container(
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: MediaQuery.of(context).viewInsets.bottom == 0 ? 152 : 64,
            ),
            child: searchWidget(
              context: context,
            ),
          )
        ],
      ),
    ),
    preferredSize: Size.fromHeight(
      MediaQuery.of(context).viewInsets.bottom == 0 ? 200 : 112,
    ),
  );
}
