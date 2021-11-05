import 'package:app_dashboard_responsivo/controllers/menu_controller.dart';
import 'package:app_dashboard_responsivo/responsive.dart';
import 'package:app_dashboard_responsivo/screens/main/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'components/side_menu.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().ScaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Queremos este menu lateral apenas para tela grande
            if (Responsive.isDesktop(context))
              Expanded(
                //flex default =1, Ocupa 1/6 parte da tela
                child: SideMenu(),
              ),

            Expanded(
              //Ocupa 5/6 parte da tela
              flex: 5,
              child: DashBoardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
