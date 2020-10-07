import 'package:flutter/material.dart';

class EmAlta extends StatefulWidget {
  @override
  _EmAltaState createState() => _EmAltaState();
}

class _EmAltaState extends State<EmAlta> {
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
          child: Text("EM ALTA",
            style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold
            ),),
        ),
      ),
    );
  }
}
