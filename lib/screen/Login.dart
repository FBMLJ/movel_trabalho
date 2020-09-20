import 'package:flutter/material.dart';
// importando o custom field
import '../components/CustomTextField.dart';
//importando o custom button
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
  //atributos
  TextEditingController _controllerEmail = TextEditingController(text: "");
  TextEditingController _controllerPassword = TextEditingController(text: "");
  //metodos
  _sendForm(){
    print(this._controllerPassword.text);
    print(this._controllerEmail.text);
  }


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
                          CustomTextField(lable: 'Email', keyboard: TextInputType.emailAddress,controller: this._controllerEmail,),
                          CustomTextField(lable: 'Senha',password: true,controller: this._controllerPassword,),
                          CustomButton(buttonText: "Enviar", onPress: (){this._sendForm();},),
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
