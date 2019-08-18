import 'package:flutter/material.dart';
import 'package:user_preferences/src/pages/settings_page.dart';
import 'package:user_preferences/src/shared_prefs/user_preferences.dart';
import 'package:user_preferences/src/widgets/menu_widget.dart';
class HomePage extends StatelessWidget {

  static final String routeName = "home";
  final _prefs = UserPreferences();

  @override
  Widget build(BuildContext context) {
    _prefs.lastPage = HomePage.routeName;
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor: (_prefs.secondaryColor) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Color Secundario: ${_prefs.secondaryColor}"),
          Divider(),
          Text("Género: ${_prefs.gender}"),
          Divider(),
          Text("Nombre de usuario: ${_prefs.name}"),
          Divider(),

        ],
      ),
    );
  }

}
