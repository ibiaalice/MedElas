import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar() : super();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: ListTile(
            leading: Icon(Icons.search),
            title: TextFormField(
              initialValue: "Pesquisa",
            ),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.info),
            title: TextFormField(
              initialValue: "Especialidade",
            ),
          ),
        ),
      ],
    );
  }
}
