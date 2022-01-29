import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class HomeListTile extends StatelessWidget {
  final String title;
  const HomeListTile({
    @required this.title,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: PRIMARY_COLLOR,
      child: ListTile(
        title: Text(title),
        onTap: () => print(""),
      ),
    );
  }
}
