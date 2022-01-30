import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/text_input_dialog.dart';
import 'package:med_elas/app/widgets/constants.dart';

class ItemProfile extends StatefulWidget {
  final String title;
  final String content;

  const ItemProfile({Key key, this.title, this.content}) : super(key: key);

  @override
  _ItemProfileState createState() => _ItemProfileState();
}

class _ItemProfileState extends State<ItemProfile> {
  bool edit = false;
  String content;

  @override
  void initState() {
    setContent(widget.content);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Container(
                child: Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                alignment: Alignment.topLeft,
              ),
            ),
          ),
          Container(
            height: 80,
            child: show(),
          )
        ],
      ),
    );
  }

  Widget show() {
    return Card(
        child: Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      content,
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                )),
                GestureDetector(
                  child: Text(
                    "EDITAR",
                    style: TextStyle(
                        color: PRIMARY_COLLOR,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  onTap: () => showDialog(
                    context: context,
                    builder: (_) => TextInputDialog(
                      title: "Editar ${widget.title}",
                      initialValue: content,
                      onConfirm: setContent,
                    ),
                  ),
                )
              ],
            )));
  }

  void setContent(String newContent) {
    setState(() {
      content = newContent;
    });
  }
}
