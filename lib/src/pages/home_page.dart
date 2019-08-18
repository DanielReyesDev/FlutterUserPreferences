import 'package:flutter/material.dart';
import 'package:user_preferences/src/pages/settings_page.dart';
import 'package:user_preferences/src/shared_prefs/user_preferences.dart';
import 'package:user_preferences/src/widgets/menu_widget.dart';
class HomePage extends StatelessWidget {

  static final String routeName = "home";
  final prefs = UserPreferences();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor: (prefs.secondaryColor) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Color Secundario: ${prefs.secondaryColor}"),
          Divider(),
          Text("Género: ${prefs.gender}"),
          Divider(),
          Text("Nombre de usuario: ${prefs.name}"),
          Divider(),

        ],
      ),
    );
  }

}
