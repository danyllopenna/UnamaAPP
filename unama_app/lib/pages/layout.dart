import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(30.0),bottomRight: Radius.circular(30.0))
                            ),
                            width: 200,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                
                        decoration: InputDecoration(
                          border:InputBorder.none,            
                          hintText:'Usuario' ,
                              fillColor: Colors.white,
                              filled: true
                        ),
                      style: TextStyle(
                        fontSize: 23.0,
                        color: Colors.black
                      ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    
                  ),
    );
  }
}