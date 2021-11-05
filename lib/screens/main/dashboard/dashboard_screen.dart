import 'package:app_dashboard_responsivo/constants.dart';
import 'package:app_dashboard_responsivo/responsive.dart';
import 'package:app_dashboard_responsivo/screens/main/dashboard/components/recent_files.dart';
import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/my_fields.dart';
import 'components/store_details.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFields(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),

                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      //No celular significa que se a tela for inferior a 850, não queremos mostrá-la
                      if (Responsive.isMobile(context)) StoreDetails(),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                //No celular significa que se a tela for inferior a 850, não queremos mostrá-la
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StoreDetails(),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
