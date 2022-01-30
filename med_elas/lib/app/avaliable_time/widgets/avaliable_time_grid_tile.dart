import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/confirm_dialog.dart';
import 'package:med_elas/app/widgets/constants.dart';

class AvaliableTimeGridTile extends StatefulWidget {
  const AvaliableTimeGridTile() : super();

  @override
  _AvaliableTimeGridTileState createState() => _AvaliableTimeGridTileState();
}

class _AvaliableTimeGridTileState extends State<AvaliableTimeGridTile> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    MOCK_DOCTORS_NAME.shuffle();
    MOCK_SPECIALITIES.shuffle();
    MOCK_SCHREDULES.shuffle();
    MOCK_AVALIBLE.shuffle();

    final doctorName = MOCK_DOCTORS_NAME[0];
    final specialite = MOCK_SPECIALITIES[0];
    final schredule = MOCK_SCHREDULES[0];
    final avalible = MOCK_AVALIBLE[0];

    return Card(
      child: GestureDetector(
        child: Container(
            color: selected
                ? FIFE_COLLOR
                : (avalible ? PRIMARY_COLLOR : FOUR_COLLOR),
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                if (selected)
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        "Você tem esse horário marcado!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                if (!selected && !avalible)
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        "Este horário já esta marcado!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[700],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                if (!selected && avalible)
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        "Este horário está disponivel!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.greenAccent[400],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Horário:",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Flexible(
                                child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text(
                                  schredule,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: SECOND_COLLOR,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            )),
                          ],
                        ))),
                SizedBox(
                  height: 5,
                ),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Médico:",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            ),
                            Flexible(
                                child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text(
                                  doctorName,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            )),
                          ],
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text(
                                  "Especialidade:",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                            )),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Text(
                                  specialite,
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                                alignment: Alignment.centerRight,
                              ),
                            ),
                          ],
                        ))),
              ],
            )),
        onTap: selected ? dialog : (avalible ? dialog : null),
      ),
    );
  }

  void dialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => ConfirmDialog(
        title: selected ? "Desmarcar Consulta" : "Marcar Consulta",
        content:
            "Tem certeza que desaja ${selected ? "desmarcar" : "marcar"} esta consulta?",
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
      ),
    );
  }

  void setSelected() {
    setState(() {
      selected = !selected;
    });
  }
}
