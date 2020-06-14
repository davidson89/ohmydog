import 'package:ohmydog/domain/Ingrediente.dart';
import 'package:ohmydog/domain/Lanche.dart';

class ItemLanche {

  Lanche lanche;
  List<Ingrediente> adicionais;
  List<Ingrediente> remocoes;
  String observacoes;

  ItemLanche(this.lanche, this.adicionais, this.remocoes, this.observacoes);

  double getTotal() {
    double valor = lanche.valor;
    for (var item in adicionais) {
      valor += item.valor;
    }
    return valor;
  }
}