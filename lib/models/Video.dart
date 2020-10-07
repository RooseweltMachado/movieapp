class Video{

  String _id;
  String _titulo;
  String _descricao;
  String _imagem;
  //String _imagemtwo;

  Video(this._id, this._titulo, this._descricao, this._imagem);



  String get imagem => _imagem;

  set imagem(String value) {
    _imagem = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }

  String get descricao => _descricao;

  set descricao(String value) {
    _descricao = value;
  }

  String get titulo => _titulo;

  set titulo(String value) {
    _titulo = value;
  }



/*static converterJson(Map<String, dynamic> json){
    return Video(
      id: json["results"]["id"],
      titulo: json["results"]["original_title"],
      descricao: json["results"]["overview"],
      imagem: json["results"]["poster_path"],
      imagemtwo: json["results"]["backdrop_path"],
    );*/

  /*factory Video.fromJson(Map<String, dynamic> json){
    return Video(
      id: json["results"]["id"].toString(),
      titulo: json["results"]["original_title"].toString(),
      descricao: json["results"]["overview"].toString(),
      imagem: json["results"]["poster_path"].toString(),
      imagemtwo: json["results"]["backdrop_path"].toString(),
      );*/
  }
