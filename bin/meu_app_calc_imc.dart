import 'package:meu_app_calc_imc/functions/imc.dart';
import 'package:meu_app_calc_imc/functions/utils.dart';
import 'package:meu_app_calc_imc/models/pessoa.dart';

void main(List<String> arguments) {
  var p1 = Pessoa("", 0.0, 0.0);
  p1.setNome(lerConsoleComTexto("Informe seu nome: "));
  p1.setPeso(lerConsoleComTextoDouble("Informe seu peso em kg: "));
  p1.setAltura(lerConsoleComTextoDouble("Infrome sua altura em cm: "));

  print(p1);
  print(classificaIMC(p1.getPeso(), p1.getAltura()));
}
