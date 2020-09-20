import 'package:flutter/material.dart';
import '../components/CustomButton.dart';
import '../components/CustomTextField.dart';

//codigo responsavel pelo exibição da tela de cadastro
class CadastroPage extends StatefulWidget {
  @override
  _CadastroPageState createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {

  //atributos
  TextEditingController _controllerEmail = TextEditingController(text: "");
  TextEditingController _controllerPassword = TextEditingController(text: "");
  TextEditingController _controllerName = TextEditingController(text: "");
  //metodos
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            Text("Cadastro", style: TextStyle(
                                color: Colors.white,
                                fontSize: 30
                            )),

                            CustomTextField(lable: 'Nome', keyboard: TextInputType.name,controller: this._controllerName,),
                            CustomTextField(lable: 'Email', keyboard: TextInputType.emailAddress,controller: this._controllerEmail),
                            CustomTextField(lable: 'Senha',password: true, controller: this._controllerPassword,),
                            CustomButton(buttonText: "Enviar", onPress: ()=>{},),
                            CustomButton(buttonText: "Volta", onPress: ()=>{Navigator.pop(context)
                            }),
                          ]
                      )
                  )
              )
          )

      ),
    );;
  }
}
