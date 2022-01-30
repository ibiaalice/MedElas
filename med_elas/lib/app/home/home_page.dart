import 'package:flutter/material.dart';
import 'package:med_elas/app/home/widgets/call_button.dart';
import 'package:med_elas/app/home/widgets/drawer.dart';
import 'package:med_elas/app/home/widgets/in_person_card.dart';
import 'package:med_elas/app/home/widgets/info_person_card.dart';
import 'package:med_elas/app/home/widgets/remote_card.dart';
import 'package:med_elas/app/widgets/constants.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      appBar: AppBar(
        backgroundColor: PRIMARY_COLLOR,
        title: Text(widget.title),
      ),
      floatingActionButton: CallButton(),
      body: ListView(
        children: [
          InfoPersonCard(),
          InPersonCard(),
          RemoteCard(),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
