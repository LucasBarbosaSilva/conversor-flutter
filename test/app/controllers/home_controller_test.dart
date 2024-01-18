import 'package:conversor_curso/controllers/home_controller.dart';
import 'package:conversor_curso/src/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TextEditingController fromText = TextEditingController();
  final TextEditingController toText = TextEditingController();
  
  HomeController homeController = HomeController(toText: toText, fromText: fromText);

  test('deve converter de real para dolar', () {
    fromText.text = "2.0";
    homeController.convert();
    expect(toText.text, "0.36");
  });

  test('deve converter de dolar para real', () {
    homeController.fromCurrency = CurrencyModel.getCurrencies()['Dolar'] as CurrencyModel;
    homeController.toCurrency = CurrencyModel.getCurrencies()['Real'] as CurrencyModel;
    fromText.text = "1.0";
    homeController.convert();
    expect(toText.text, "5.65");
  });

  test('deve converter de real para dolar com vírgula', () {
    fromText.text = "2,0";
    homeController.convert();
    expect(toText.text, "0.36");
  });
}