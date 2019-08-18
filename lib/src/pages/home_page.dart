import 'package:flutter/material.dart';
import 'package:user_preferences/src/pages/settings_page.dart';
import 'package:user_preferences/src/widgets/menu_widget.dart';
class HomePage extends StatelessWidget {

  static final String routeName = "home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Color Secundario"),
          Divider(),
          Text("Género"),
          Divider(),
          Text("Nombre de usuario"),
          Divider(),

        ],
      ),
    );
  }

}
