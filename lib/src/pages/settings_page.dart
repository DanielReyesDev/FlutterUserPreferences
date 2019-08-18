import 'package:flutter/material.dart';
import 'package:user_preferences/src/widgets/menu_widget.dart';

class SettingsPage extends StatelessWidget {

  static final String routeName = "settings";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text("Settings", style: TextStyle(fontSize: 45.0, fontWeight: FontWeight.bold),),
          ),
          Divider(),
          SwitchListTile(
            value: true,
            title: Text("Color secundario"),
            onChanged: (value){},
          ),
          RadioListTile(
            value: 1,
            title: Text("Masculino"),
            groupValue: 2,
            onChanged: (value){},
          ),
          RadioListTile(
            value: 1,
            title: Text("Femenino"),
            groupValue: 2,
            onChanged: (value){},
          ),

          Divider(),

          Container(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: "Nombre de la persona usando el teléfono"
              ),
            ),
          )
        ],
      )
    );
  }
}