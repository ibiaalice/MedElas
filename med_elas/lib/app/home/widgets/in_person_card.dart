import 'package:flutter/material.dart';
import 'package:med_elas/app/home/widgets/card_title.dart';
import 'package:med_elas/app/home/widgets/option_card_button.dart';
import 'package:med_elas/app/local/local_page.dart';
import 'package:med_elas/app/local/widgets/clinical_map.dart';
import 'package:med_elas/app/schedule/schedule_page.dart';
import 'package:med_elas/app/widgets/constants.dart';

class InPersonCard extends StatelessWidget {
  const InPersonCard() : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: THIRD_COLLOR,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            CardTitle(
              icon: Icons.person,
              title: "Atendimento Presencial",
            ),
            OptionCardButton(
              title: "Marcação",
              icon: Icons.access_alarm_rounded,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => SchedulePage())),
            ),
            OptionCardButton(
              title: "Localidade",
              icon: Icons.gps_fixed_rounded,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => LocalPage())),
            ),
          ],
        ),
      ),
    );
  }
}
