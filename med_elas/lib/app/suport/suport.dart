import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/button.dart';
import 'package:med_elas/app/widgets/constants.dart';

class Suport extends StatefulWidget {
  @override
  _SuportState createState() => _SuportState();
}

class _SuportState extends State<Suport> {
  TextEditingController _solicitacao;
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Suporte"),
        backgroundColor: PRIMARY_COLLOR,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 25.0),
            Padding(
              padding: EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    'Informe o que aconteceu para que possamos te ajudar!',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.all(16),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: TextFormField(
                      controller: _solicitacao,
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      style: TextStyle(fontSize: 22),
                      validator: (value) {
                        if (value.isEmpty)
                          return "Ops, preencha sua solicitação";
                        return null;
                      },
                      decoration: InputDecoration.collapsed(
                        hintText: 'Digite sua mensagem...',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 22.0),
                      )),
                ),
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    border: Border.all(color: PRIMARY_COLLOR)),
              ),
            ),
            SizedBox(height: 20.0),
            ButtonClick(
              onPressed: () {
                _onFail();
              },
              title: 'ENVIAR',
              colorButton: SECOND_COLLOR,
            ),
          ],
        ),
      ),
    );
  }

  void _onFail() {
    _scaffoldKey.currentState.showSnackBar(SnackBar(
      content: Text("Falha ao enviar sua menssagem, tente novamente!!"),
      backgroundColor: Colors.blue,
      duration: Duration(seconds: 2),
    ));
  }
}
