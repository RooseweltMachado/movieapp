import 'package:flutter/material.dart';

class Favoritos extends StatefulWidget {
  @override
  _FavoritosState createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("imagens/imagemfundo.jpg"),
              fit: BoxFit.cover,
            )
        ),
        child: Center(
          child: Text("Favoritos",
            style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold
            ),),
        ),
      ),
    );
  }
}
