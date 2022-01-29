import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class OptionCardButton extends StatelessWidget {
  final String title;
  final Function onTap;
  final IconData icon;

  const OptionCardButton({
    @required this.title,
    this.onTap,
    this.icon,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          icon,
          color: PRIMARY_COLLOR,
        ),
        onTap: () => onTap(),
        title: Text(title),
      ),
    );
  }
}
