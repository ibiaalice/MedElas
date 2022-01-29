import 'package:flutter/material.dart';
import 'package:med_elas/app/local/widgets/add_local_button.dart';
import 'package:med_elas/app/local/widgets/search_bar.dart';

import 'package:med_elas/app/widgets/constants.dart';

class LocalPage extends StatelessWidget {
  const LocalPage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLLOR,
        title: Text("Clinicas perto da sua região"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image:
              DecorationImage(image: NetworkImage(MOCK_MAP), fit: BoxFit.cover),
        ),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SearchBar(),
      ),
      floatingActionButton: AddLocalButton(),
    );
  }
}
