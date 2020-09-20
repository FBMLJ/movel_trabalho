import 'package:flutter/material.dart';

// importando o custom field
import '../components/CustomTextField.dart';
import 'Cadastro.dart';
//
import '../components/CustomButton.dart';

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
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white.withOpacity(.5),

                    ),
                    width: MediaQuery.of(context).size.width *.7 ,
                    height: MediaQuery.of(context).size.height *.5  ,

                    child: Column(
                        children: <Widget>[
                          Text("Login", style: TextStyle(
                              color: Colors.white,
                              fontSize: 30
                            )),
                          CustomTextField(lable: 'Email'),
                          CustomTextField(lable: 'Senha',password: true),
                          CustomButton(buttonText: "Enviar", onPress: ()=>{},),
                          CustomButton(buttonText: "Cadastre-se", onPress: ()=>{Navigator.pushNamed(context,'/cadastro')
                          }),
                        ]
                    )
                  )
                )
          )

        ),
    );
  }
}
