import 'package:flutter/material.dart';
import 'package:med_elas/app/about/about.dart';
import 'package:med_elas/app/home/widgets/home_list_tile.dart';
import 'package:med_elas/app/initialPage/initial_page.dart';
import 'package:med_elas/app/profile/profile.dart';
import 'package:med_elas/app/terms/terms.dart';
import 'package:med_elas/app/widgets/constants.dart';

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
              HomeListTile(
                title: "Meu Perfil",
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Profile())),
              ),
              HomeListTile(
                title: "Sobre o MedElas",
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => About())),
              ),
              HomeListTile(
                title: "Termos",
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Terms())),
              ),
              HomeListTile(
                title: "Sair",
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => InitalPage())),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    child: Text(
                      "Versão 1.0.0",
                      style: TextStyle(
                          fontSize: 20,
                          color: PRIMARY_COLLOR,
                          fontWeight: FontWeight.bold),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
