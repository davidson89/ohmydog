import 'package:ohmydog/domain/Bebida.dart';
import 'package:ohmydog/domain/FormaPagto.dart';
import 'package:ohmydog/domain/ItemLanche.dart';
import 'package:ohmydog/domain/ProdutoGenerico.dart';

class Pedido {

  String cliente;
  List<ItemLanche> itensLanche = List();
  List<Bebida> bebidas = List();
  List<ProdutoGenerico> produtosGenericos = List();
  String endereco;
  String telefone;
  FormaPagto formaPagto;
  DateTime dataHora = DateTime.now();
  double trocoPara;
  String observacoes;

  double getTotal() {
    double valorTotal = 0.0;

    for (var item in itensLanche) {
      valorTotal += item.getTotal();
    }

    for (var bebida in bebidas) {
      valorTotal += bebida.valor;
    }

    for (var produto in produtosGenericos) {
      valorTotal += produto.valor;
    }

    return valorTotal;
  }

}