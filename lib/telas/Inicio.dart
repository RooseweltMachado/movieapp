import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:movieapp/models/Video.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  String CHAVE_ACESSO =  "44e16b103f071a5396a67cd952f18452";

   Future<List<Video>> _pesquisar() async {

    String url = "https://api.themoviedb.org/3/movie/popular?api_key=${CHAVE_ACESSO}";
    http.Response response = await http.get(url);

      var dadosJson = json.decode(response.body);
      List<Video> videos = List();
      for (var i in dadosJson["results"]) {
        print("Video: " + i["id"]);//Talvez precise do ["results"]
        Video v = Video(i["id"], i["title"],i["overview"], i["poster_path"]);
        videos.add(v);
      }
      return videos;
      //print( videos.toString());

      //print("resposta: "+ dadosJson["results"].toString());
      /*item ["id"] = i["id"].toString();
        item ["titulo"] = i["original_title"].toString();
        item ["descricao"] = i["overview"].toString();
        item ["imagem"] = i["poster_path"].toString();
        itens.add(item);*/

  }



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
          child: FutureBuilder<List<Video>>(
          future: _pesquisar(),
          builder: (context, snapshot){
            switch (snapshot.connectionState){
              case ConnectionState.none:
              case ConnectionState.waiting:
                return Center(
                  child: CircularProgressIndicator(),
                );
                    break;
              case ConnectionState.active:
              case ConnectionState.done:
                if (snapshot.hasError){
                  print("Error");
                }else{
                  print("Carregou!!");
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                      itemBuilder: (context, index){
                      List<Video> lista = snapshot.data;
                      Video video = lista[index];

                      return ListTile(
                          title: Text(video.titulo.toString()),
                          subtitle: Text(video.descricao.toString()) ,
                        );
                      },
                  );
                }
                break;
            }
          },
        ),
      ),
    );

  }
}
