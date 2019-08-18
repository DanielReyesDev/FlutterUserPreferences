import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:user_preferences/src/shared_prefs/user_preferences.dart';
import 'package:user_preferences/src/widgets/menu_widget.dart';

class SettingsPage extends StatefulWidget {

  static final String routeName = "settings";

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

  final _prefs = new UserPreferences();

  bool _secondaryColor;
  int _gender;
  String _name;

  TextEditingController _textController;

  @override
  void initState() { 
    super.initState();
    _prefs.lastPage = SettingsPage.routeName;
    _gender = _prefs.gender;
    _secondaryColor = _prefs.secondaryColor;
    _textController = new TextEditingController(text: _prefs.name);
  }


  _setSelectedRadio(int value) {
    _prefs.gender = value;
    _gender = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
        backgroundColor: (_prefs.secondaryColor) ? Colors.teal : Colors.blue,
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
            value: _secondaryColor,
            title: Text("Color secundario"),
            onChanged: (value){
              setState(() {
                _secondaryColor = value;
                _prefs.secondaryColor = value;
              });
            },
          ),

          RadioListTile(
            value: 1,
            title: Text("Masculino"),
            groupValue: _gender,
            onChanged: _setSelectedRadio
          ),
          
          RadioListTile(
            value: 2,
            title: Text("Femenino"),
            groupValue: _gender,
            onChanged: _setSelectedRadio
          ),

          Divider(),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: "Nombre de la persona usando el teléfono"
              ),
              onChanged: (value){
                _prefs.name = value;
              },
            ),
          )
        ],
      )
    );
  }
}