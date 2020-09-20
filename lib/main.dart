import 'package:flutter/material.dart';
import 'package:flutter_app/screen/Cadastro.dart';
import 'package:flutter_app/screen/Login.dart';
import 'Roteamento.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: LoginPage(title: "Login"),

      // roteamento do flutter
      //   onGenerateRoute: RouteGenerator.generateRoute
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/cadastro': (context) => CadastroPage()
      },

    );
  }
}
