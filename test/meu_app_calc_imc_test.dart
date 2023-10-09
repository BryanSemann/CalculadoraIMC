import 'package:meu_app_calc_imc/functions/imc.dart';
import 'package:test/test.dart';

void main() {
  test('Classificar IMC', () {
    expect(classificaIMC(98, 175), "IMC: 32.0 (Obesidade grau I)");
  });

  test('Classificar IMC 2', () {
    expect(classificaIMC(98, 190), "IMC: 27.0 (Sobrepeso)");
  });

  test('Classificar IMC Erro sem peso', () {
    expect(() => classificaIMC(0, 190), throwsA(TypeMatcher<ArgumentError>()));
  });

  group('Classifica IMC testes sem erro', () {
    var valuesTeste = {
      {"peso": 90, "altura": 180}: "IMC: 28.0 (Sobrepeso)",
      {"peso": 98, "altura": 175}: "IMC: 32.0 (Obesidade grau I)"
    };

    valuesTeste.forEach((values, expected) {
      test("Entrada: $values / Esperando: $expected", () {
        expect(
            classificaIMC(double.parse(values["peso"].toString()),
                double.parse(values["altura"].toString())),
            expected);
      });
    });
  });

  group('Classifica IMC testes com erro', () {
    var valuesTeste = {
      {"peso": 0, "altura": 180},
      {"peso": 98, "altura": 0}
    };

    for (var values in valuesTeste) {
      test("Entrada: $values", () {
        expect(
            () => classificaIMC(double.parse(values["peso"].toString()),
                double.parse(values["altura"].toString())),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    }
  });
}
