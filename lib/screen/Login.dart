import 'package:flutter/material.dart';
import '../components/CustomTextField.dart';
//codigo responsavel pelo exibição da tela de login
class LoginPage extends StatefulWidget {

  LoginPage({Key key, this.title}) : super(key: key);
  @override

  final String title;
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(

            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height  ,
          decoration: BoxDecoration(
            //gradiente
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue, Colors.greenAccent]
              )
          ),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(10),
                  //esse codigo cria um retangulo no meio da tela
                  child: Container(

                    width: MediaQuery.of(context).size.width *.7 ,
                    height: MediaQuery.of(context).size.height *.5  ,
                    color: Colors.white.withOpacity(.5),
                    child: Column(
                        children: <Widget>[
                          Text("Login", style: TextStyle(
                              color: Colors.white,
                              fontSize: 30
                            )),
                          CustomTextField(placeholder: 'Email'),
                          CustomTextField(placeholder: 'Senha',password: true)
                        ]
                    )
                  )
                )
          )

        ),
    );
  }
}
