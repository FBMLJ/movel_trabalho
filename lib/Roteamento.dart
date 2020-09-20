import 'package:flutter/material.dart';

import 'screen/Login.dart';
import 'screen/Cadastro.dart';


class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/" :
        return MaterialPageRoute(
            builder: (_) => LoginPage()
        );
      case "/login" :
        return MaterialPageRoute(
            builder: (_) => LoginPage()
        );
      case "/cadastro" :
        return MaterialPageRoute(
            builder: (_) => CadastroPage()
        );

      default:
        _erroRota();
    }
  }

  static Route<dynamic> _erroRota() {
    return MaterialPageRoute(
        builder: (_) {
          return Scaffold(
            appBar: AppBar(title: Text("Tela não encontrada!"),),
            body: Center(
              child: Text("Tela não encontrada!"),
            ),
          );
        }
    );
  }
}