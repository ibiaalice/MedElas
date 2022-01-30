import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class HomeListTile extends StatelessWidget {
  final String title;
  final Function onTap;

  const HomeListTile({
    @required this.title,
    this.onTap,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: PRIMARY_COLLOR,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onTap: onTap,
      ),
    );
  }
}
