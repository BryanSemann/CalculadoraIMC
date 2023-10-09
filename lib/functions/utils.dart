import 'dart:convert';
import 'dart:io';

String lerConsole() {
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

String lerConsoleComTexto(String texto) {
  print(texto);
  return lerConsole();
}

double lerConsoleComTextoDouble(String texto) {
  print(texto);
  try {
    return double.parse(lerConsole());
  } catch (e) {
    print("Número inválido");
    return lerConsoleComTextoDouble(texto);
  }
}
