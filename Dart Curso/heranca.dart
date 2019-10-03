abstract class Funcionario{
  String _nome;
  Funcionario (this._nome);
}

class Gerente extends Funcionario{
  String _setor;
  Gerente(String nome, this._setor) : super(nome);
}

// void main() {
//   Funcionario gerente = Gerente('Guilherme', 'TI');
//   print(gerente._nome);
// }