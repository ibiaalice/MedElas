import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:flutter/material.dart';
import 'package:med_elas/app/schedule/widgets/add_schedule_button.dart';
import 'package:med_elas/app/schedule/widgets/schredule_calendar.dart';
import 'package:med_elas/app/widgets/constants.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: PRIMARY_COLLOR,
          title: Text("Calendário de marcações"),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  ScheduleCalendar(),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.5),
                    child: Container(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: PRIMARY_COLLOR,
                        child: Center(
                          child: Text(
                            "Não há marcação para o dia selecionado",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: AddScheduleButton());
  }
}
