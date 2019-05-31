


import 'package:flutter/cupertino.dart';

class Eventos{
  List<Evento> _eventos;

  Eventos.initializeEventos () {
    _eventos = List<Evento>();
    _eventos.add(Evento('congresso','15/10/2019','congresso para area de TI','lib/imagens/congresso.jpg'));
    _eventos.add(Evento('apresentação de Dança','29/06/2019','Apresentação de dança da turam de Educação fisica','lib/imagens/danca.png'));
    _eventos.add(Evento('congresso','15/10/2019','congresso para area de TI','lib/imagens/congresso.jpg'));
    _eventos.add(Evento('congresso','15/10/2019','congresso para area de TI','lib/imagens/congresso.jpg'));
    _eventos.add(Evento('congresso','15/10/2019','congresso para area de TI','lib/imagens/congresso.jpg'));
    _eventos.add(Evento('congresso','15/10/2019','congresso para area de TI','lib/imagens/congresso.jpg'));
    _eventos.add(Evento('congresso','15/10/2019','congresso para area de TI','lib/imagens/congresso.jpg'));
  }

  List<Evento> get getEventos => _eventos;


}

class Evento {
  String _titulo;
  String _data;
  String _descricao;
  String _image;

  Evento(this._titulo,this._data,this._descricao, this._image );

  String get getTitulo => _titulo;
  String get getData => _data;
  String get getDescricao => _descricao;
  String get getImagem => _image;
  
}