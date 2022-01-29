import 'package:flutter/material.dart';

class BottomOpptions extends StatelessWidget {
  final Widget top;
  final Widget screen;

  const BottomOpptions({Key key, this.top, this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Theme.of(context).canvasColor),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0), topRight: Radius.circular(40.0)),
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                    right: MediaQuery.of(context).size.height * 0.5),
                child: Positioned(
                  left: 10,
                  top: 10,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(
                      Icons.close,
                      size: 30.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
              top,
              SizedBox(height: 60),
              Expanded(child: screen),
            ],
          ),
          height: MediaQuery.of(context).size.height / 1.1,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
        ),
      ),
    );
  }
}
