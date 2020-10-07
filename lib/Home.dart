import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/telas/EmAlta.dart';
import 'package:movieapp/telas/Favoritos.dart';
import 'package:movieapp/telas/Inicio.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  List<Widget> telas = [
    Inicio(),
    Favoritos(),
    EmAlta()

  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "imagens/transferiu.jpg",
          height: 108,
          width: 73,
        ),
        backgroundColor: Color.fromRGBO(3, 37, 65,1,),
        iconTheme: IconThemeData(
          color: Color.fromRGBO(1, 178, 227, 0.8),
          opacity: 1
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              iconSize: 32,
              onPressed: (){},
            ),

          IconButton(
              icon: Icon(Icons.account_circle),
              iconSize: 32,
              onPressed: (){},

            ),
        ],
      ),
      body: Container(

        child: telas[_indiceAtual],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
          onTap: (indice){
            setState(() {
              _indiceAtual = indice;
            });
          },
          backgroundColor: Color.fromRGBO(3, 37, 65,1,),
        fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
              title: Text("Home",
              style: TextStyle(color: Colors.blueAccent),),
              icon: Icon(Icons.home,)
          ),
          BottomNavigationBarItem(
              title: Text("Favoritos",
              style: TextStyle(color: Colors.yellow),),
              icon: Icon(Icons.stars,
                color: Colors.yellow,)
          ),
          BottomNavigationBarItem(
              title: Text("Em Alta",
              style: TextStyle(
                color: Colors.red
              ),),
              icon: Icon(Icons.whatshot,
                color: Colors.red)
          ),
        ]),
    );
  }
}
