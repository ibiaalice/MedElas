import 'package:calendar_calendar/calendar_calendar.dart';
import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class ScheduleCalendar extends StatelessWidget {
  const ScheduleCalendar() : super();

  @override
  Widget build(BuildContext context) {
    return Calendar(
      weekendOpacityEnable: true,
      previous: Container(
        child: CircleAvatar(
          radius: 14,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.arrow_back_ios,
            size: 16,
            color: Colors.orange,
          ),
        ),
      ),
      next: Container(
        child: CircleAvatar(
          radius: 14,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: PRIMARY_COLLOR,
          ),
        ),
      ),
      onSelected: print,
      space: 1,
      backgroundColor: Colors.white,
      activeColor: PRIMARY_COLLOR,
      textStyleDays:
          TextStyle(fontWeight: FontWeight.normal, color: Colors.black),
      textStyleWeekDay:
          TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      titleStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
      selectedStyle:
          TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
