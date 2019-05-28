import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
        child: Center(
          child: Container(
            width: 400,
            height:400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 250,

                  child: Material(
                    elevation: 5.0,
                    color: Color.fromRGBO(0, 100, 0, 1),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(13),
                            child: Icon(Icons.person, color: Colors.black,),
                          ),
                          Container(
                            width: 200,
                            child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),bottomRight: Radius.circular(30.0))),
                          hintText: 'Usuario',
                            fillColor: Colors.white,
                            filled: true
                        ),
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black
                      ),
                            ),
                          ),
                        ],
                      ),
                    
                  ),
                )
                
              ],
            ),
            ),
        ),
      ),
    );
  }
}