import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {

Icon fieldIcon;
String hintText;
CustomInput(this.fieldIcon,this.hintText);

  @override
  Widget build(BuildContext context) {
    return Container(
                  width: 250,

                  child: Material(
                    elevation: 8.0,
                    color: Color.fromRGBO(0, 100, 0, 1),
                    borderRadius: BorderRadius.all(Radius.circular(30.0)
                    ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child:fieldIcon ,
                          ),
                          Container(
                            width: 200,
                            height: 60,
                            child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),bottomRight: Radius.circular(30.0))),
                          hintText: hintText,
                            fillColor: Colors.white,
                            filled: true
                        ),
                      style: TextStyle(
                        fontSize: 23.0,
                        color: Colors.black
                      ),
                            ),
                          ),
                        ],
                      ),
                    
                  ),
    );
  }
}