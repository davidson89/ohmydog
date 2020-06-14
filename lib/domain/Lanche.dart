import 'package:ohmydog/domain/Ingrediente.dart';

class Lanche {

  String nome;
  String descricao;
  double valor;
  List<Ingrediente> ingredientes;

  Lanche(String nome, String descricao, double valor, List<Ingrediente> ingredientes) {
    this.nome = nome;
    this.descricao = descricao;
    this.valor = valor;
    this.ingredientes = ingredientes;
  }

}