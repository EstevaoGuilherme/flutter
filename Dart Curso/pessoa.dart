class Pessoa{
  String _nome;
  String _sobreNome;

  Pessoa(String nome, String sobreNome){
    this._nome = nome;
    this._sobreNome = sobreNome;
  }

  void set nome(String nome){
    this._nome = nome;
  }

  String get nome{
    return _nome;
  }
  
  @override
  String toString() {
    return 'Nome: $nome $_sobreNome;                                                                                                                                                                                             obreNome';
  }

  
}