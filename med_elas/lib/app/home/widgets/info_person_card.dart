import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class InfoPersonCard extends StatelessWidget {
  const InfoPersonCard() : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: THIRD_COLLOR,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: Column(
          children: [
            PerfilDetails(
              avatar: MOCK_AVATAR,
              name: MOCK_NAME,
            ),
            PersonNotification(
                // qtdNotification: 1,
                )
          ],
        ),
      ),
    );
  }
}

class PersonNotification extends StatelessWidget {
  final int qtdNotification;
  const PersonNotification({
    this.qtdNotification,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: SECOND_COLLOR,
        child: ListTile(
          title: qtdNotification != null
              ? Text("Há " + qtdNotification.toString() + " notificação!")
              : Text("Não há notificações"),
          trailing: Icon(Icons.announcement),
        ),
      ),
    );
  }
}

class PerfilDetails extends StatelessWidget {
  final String name;
  final String avatar;
  const PerfilDetails({this.name, this.avatar}) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                avatar,
                scale: 0.000003,
              ),
            ),
          ),
          Text(
            "Bom dia, " + name,
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
