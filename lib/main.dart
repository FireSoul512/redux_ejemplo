import 'package:flutter/material.dart';
import 'package:redux_ejemplo/src/page1.dart';

void main() {
  runApp(FlutterReduxApp(
    title: 'Flutter Redux Demo',
  ));
}

class FlutterReduxApp extends StatelessWidget {
  final String title;

  FlutterReduxApp({required this.title}) ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Inicio(),
      theme: ThemeData.dark(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Integrantes'),
      ),
      body: Column(
        children: <Widget>[
          Integrantes('Jorge roberto Aguirre Liy', '183386'),
          Integrantes('Jose Luis Alvarez Morales', '183417'),
          Integrantes('José Angel Ruiz Pérez', '181109'),
          RaisedButton(
            child: Text('Ejemplo'),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Page1(),
              ));
            },
          ),
        ],
      ),
    );
  }

  ListTile Integrantes(String nombre, String matricula){
    return ListTile(
      title: Text(nombre),
      subtitle: Text(matricula),
      leading: Icon(Icons.person),
    );
  }
}