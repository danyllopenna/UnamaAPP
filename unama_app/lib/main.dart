import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:unama_app/pages/login.dart';

void main() {
  runApp(MaterialApp(
    title: 'Login App',
    home: LoginPage(),
  ));
}
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child:Stack(
                  children: <Widget>[
                    
                      Center(
            child: Container(
              width: 400,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
            Material(
              
              child: Image.asset('lib/imagens/unama.png' ,width:300,height: 200 ,)),
                  CustomInput(
                    Icon(Icons.person, color: Colors.black,),'Usuario'),
                    CustomInput(
                      Icon(Icons.lock,color: Colors.black,), 'senha'),

                      Container(
                        width: 100,
                        child: RaisedButton(onPressed:(){}, color: Colors.green,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))), 
                        child:Text('Entrar',style: TextStyle(
                          fontSize: 20.0
                        ),) ,),
                        
                        )
                ],
              ),
            ),
          ),
                  ],
        ),
      ),
    );
  }
}