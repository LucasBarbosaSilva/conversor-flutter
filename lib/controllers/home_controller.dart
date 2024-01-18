import 'package:conversor_curso/src/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  late Map<String, CurrencyModel> currencies;
  late CurrencyModel fromCurrency;
  late CurrencyModel toCurrency;

  final TextEditingController fromText;
  final TextEditingController toText;

  HomeController({required this.fromText, required this.toText}){
    currencies = CurrencyModel.getCurrencies();
    fromCurrency = currencies['Real'] as CurrencyModel;
    toCurrency = currencies['Dolar'] as CurrencyModel;
  }

  void convert(){
    String text = fromText.text;
    double value = double.tryParse(text.replaceAll(",", ".")) ?? 1.0;
    double convertedValue = 0;

    if(toCurrency.name == "Real"){
      convertedValue = value * fromCurrency.real;
    } else if(toCurrency.name == "Dolar"){
      convertedValue = value * fromCurrency.dolar;
    } else if(toCurrency.name == "Euro"){
      convertedValue = value * fromCurrency.euro;
    } else if(toCurrency.name == "Bitcoin"){
      convertedValue = value * fromCurrency.bitcoin;
    }
    toText.text = convertedValue.toStringAsFixed(2);
  }
}