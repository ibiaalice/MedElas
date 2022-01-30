import 'package:flutter/material.dart';
import 'package:med_elas/app/profile/widgets/item_profile.dart';
import 'package:med_elas/app/widgets/constants.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = MOCK_USER["name"];
    String email = MOCK_USER["email"];
    String cpf = MOCK_USER["cpf"];
    String sus = MOCK_USER["sus"];
    String date = MOCK_USER["date"];
    String local = MOCK_USER["local"];
    String diseases = MOCK_USER["diseases"];
    String medicines = MOCK_USER["medicines"];

    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Perdil"),
        backgroundColor: PRIMARY_COLLOR,
      ),
      body: ListView(
        children: [
          Icon(
            Icons.person,
            size: 130,
          ),
          ItemProfile(
            title: "Name",
            content: name,
          ),
          SizedBox(
            height: 20,
          ),
          ItemProfile(
            title: "Email",
            content: email,
          ),
          SizedBox(
            height: 20,
          ),
          ItemProfile(
            title: "CPF",
            content: cpf,
          ),
          SizedBox(
            height: 20,
          ),
          ItemProfile(
            title: "SUS",
            content: sus,
          ),
          SizedBox(
            height: 20,
          ),
          ItemProfile(
            title: "Data de Nascimento",
            content: date,
          ),
          SizedBox(
            height: 20,
          ),
          ItemProfile(
            title: "Endereço",
            content: local,
          ),
          SizedBox(
            height: 20,
          ),
          ItemProfile(
            title: "Doenças",
            content: diseases,
          ),
          SizedBox(
            height: 20,
          ),
          ItemProfile(
            title: "Medicamentos",
            content: medicines,
          ),
        ],
      ),
    );
  }
}
