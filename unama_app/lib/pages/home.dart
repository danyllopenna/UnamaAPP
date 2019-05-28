import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("O que há na Unama ?"),
      backgroundColor: Colors.green,
      
      ),
      drawer: Drawer(
        child:ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Unama"),
              accountEmail: Text("você sempre na frente"),
              currentAccountPicture: GestureDetector(
                onTap: () =>print("toque na imagem"),
                child: CircleAvatar(
                  backgroundImage: AssetImage('unama'),
                  
                ) ,
              ),
              
            ),
            
            ListTile(
              title: Text("segunda - Feira"),
            
            onTap: (){},
            ),
            Divider(),
            ListTile(
              title: Text("Terça - feira"),
              trailing: Icon(Icons.arrow_forward),
            ),
            Divider(),
            

          ],
        ) ,),
      body: Center(
        child: Text("Ola mundo"),
      ),
    );
  }
}