import 'package:conversor_curso/components/currency_linebox.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  
  @override
  State<StatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> currencies = <String>['Real', 'Dolar', 'Euro', 'Bitcoin'];

  void setCurrency(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 60, bottom: 20),
            child: Column(
              children: [
                Image.asset("assets/convert.png", width: 150, height: 150,),
                const SizedBox(height: 50,),
                const CurrencyLinebox(),
                const CurrencyLinebox(),  
                const SizedBox(height: 70,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromRGBO(128,128,0, 1.0))
                  ),
                  onPressed: (){}, 
                  child: const Text("CONVERTER", style: TextStyle(fontSize: 18),))
                
              ],
            ),
          ),
        ),
      );
  }
}