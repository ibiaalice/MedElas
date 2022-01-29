import 'package:flutter/material.dart';
import 'package:med_elas/app/home/widgets/exit_button.dart';
import 'package:med_elas/app/home/widgets/home_list_tile.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer() : super();

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Padding(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Column(
            children: [
              HomeListTile(title: "Meu Perfil"),
              HomeListTile(title: "Calendário"),
              HomeListTile(title: "Sobre o app"),
              HomeListTile(title: "Termos"),
              HomeListTile(title: "Sair")
            ],
          ),
        ],
      ),
    ));
  }
}
