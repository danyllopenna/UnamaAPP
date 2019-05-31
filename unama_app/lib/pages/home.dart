import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unama_app/util/eventos.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Evento> _eventos;
  _HomePageState(){
    _eventos = Eventos.initializeEventos().getEventos;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eventos',style: TextStyle(fontSize: 30,
        fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
      ),
      body:
      
       Padding(
         padding:  EdgeInsets.fromLTRB(0.0,20.0,0.0,0.0),
        child: corpoLista(context),
         ),
    
      );
  }
  corpoLista(BuildContext context){
    return ListView.builder(
      itemCount: _eventos.length,
      itemBuilder: _lista,//classe de listas
      padding: EdgeInsets.all(0.0),
    );
  }
  Widget _lista(BuildContext context, int index){
    return Card(
      child: Column(
        children: <Widget>[
             ListTile(
              leading: Image.asset(_eventos[index].getImagem,fit: BoxFit.cover, width: 100,
              
              ),
              title: Text(_eventos[index].getTitulo,
              style: TextStyle(
                fontSize:14.0, fontWeight: FontWeight.bold 
                ),
              ),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(_eventos[index].getDescricao,
                  style: TextStyle(fontSize: 10.0)),
                  Text('data: ${_eventos[index].getData}')
                ],
              ),
            ),
          
        ],
      ), 
    );
  }
}
