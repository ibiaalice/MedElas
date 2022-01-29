import 'package:flutter/material.dart';
import 'package:med_elas/app/avaliable_time/avaliable_time_page.dart';
import 'package:med_elas/app/home/widgets/card_title.dart';
import 'package:med_elas/app/home/widgets/option_card_button.dart';
import 'package:med_elas/app/widgets/constants.dart';

class RemoteCard extends StatelessWidget {
  const RemoteCard() : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: THIRD_COLLOR,
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            CardTitle(
              title: "Atendimento Remoto",
              icon: Icons.phone_android_rounded,
            ),
            OptionCardButton(
              title: "Horários Disponíveis",
              icon: Icons.missed_video_call_sharp,
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AvaliableTimePage())),
            ),
            OptionCardButton(
              title: "Médicos",
              icon: Icons.medical_services,
              onTap: () => print("shjhh"),
            ),
          ],
        ),
      ),
    );
  }
}
