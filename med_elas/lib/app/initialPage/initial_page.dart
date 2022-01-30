import 'package:flutter/material.dart';
import 'package:med_elas/app/initialPage/widgets/button_sheet.dart';
import 'package:med_elas/app/initialPage/widgets/clipper.dart';
import 'package:med_elas/app/initialPage/widgets/logo.dart';
import 'package:med_elas/app/initialPage/widgets/top.dart';
import 'package:med_elas/app/initialPage/widgets/top_login.dart';
import 'package:med_elas/app/initialPage/widgets/top_register.dart';
import 'package:med_elas/app/login/login.dart';
import 'package:med_elas/app/register/persion_informations.dart';
import 'package:med_elas/app/widgets/custom_button.dart';

class InitalPage extends StatefulWidget {
  @override
  _InitalPageState createState() => _InitalPageState();
}

class _InitalPageState extends State<InitalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).primaryColor,
      body: Builder(builder: (context) {
        return Column(
          children: <Widget>[
            Logo(),
            Padding(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CustomButton(
                    label: "LOGIN",
                    primaryColor: Colors.white,
                    secondaryColor: Theme.of(context).primaryColor,
                    onPressed: () => _loginSheet(context),
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    label: "REGISTER",
                    primaryColor: Theme.of(context).primaryColor,
                    secondaryColor: Colors.white,
                    onPressed: () => _registerSheet(context),
                  ),
                ],
              ),
              padding: EdgeInsets.only(top: 80, left: 20, right: 20),
            ),
            Expanded(
              child: Align(
                child: ClipPath(
                  child: Container(
                    color: Colors.white,
                    height: 300,
                  ),
                  clipper: BottomWaveClipper(),
                ),
                alignment: Alignment.bottomCenter,
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,
        );
      }),
    );
  }

  void _loginSheet(context) {
    showBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return BottomOpptions(
          screen: Login(),
          top: Top(
              top: Top(
            top: TopLogin(),
          )),
        );
      },
    );
  }

  void _registerSheet(context) {
    showBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return BottomOpptions(
            screen: PersionInformations(),
            top: Top(
              top: TopRegister(),
            ));
      },
    );
  }
}
