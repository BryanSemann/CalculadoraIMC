double calcularIMC(double peso, double altura) => peso / (altura * altura);

String classificaIMC(double peso, double altura) {
  if (peso <= 0 || altura <= 0) {
    throw ArgumentError();
  }

  double valor = calcularIMC(peso, (altura / 100)).roundToDouble();

  return valor < 18.5
      ? "IMC: $valor (Baixo peso)"
      : valor < 25
          ? "IMC: $valor (Peso normal)"
          : valor < 30
              ? "IMC: $valor (Sobrepeso)"
              : valor < 35
                  ? "IMC: $valor (Obesidade grau I)"
                  : valor < 40
                      ? "IMC: $valor (Obesidade grau II)"
                      : "IMC: $valor (Obesidade grau III)";
}
