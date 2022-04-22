import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:list_of_companies/utils/utils.dart';
import 'widget/appBarHome.widget.dart';
import 'widget/listCompanies.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Observer(
      builder: (context) => Scaffold(
        appBar: appBarHomeCustom(
          context: context,
          width: width,
          height: height,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  SizedBox(
                    width: width,
                    child: Text(
                      "04 resultados encontrados",
                      style: TextStyle(
                        color: IoasysColors.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  listCompaniesWidget(
                    width: width,
                    context: context,
                  ),
                ],
              ),
            ),

            // loadingHomeWidget(
            //   context: context,
            //   width: width,
            //   height: height,
            // ),
          ],
        ),
      ),
    );
  }
}
