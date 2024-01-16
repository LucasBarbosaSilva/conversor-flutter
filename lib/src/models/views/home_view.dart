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
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/convert.png", width: 150, height: 150,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 65,
                          child: DropdownButton(
                            isExpanded: true,
                            underline: Container(
                              height: 1,
                              color: Colors.amber,
                            ),
                            items: [
                              DropdownMenuItem(child: Text("Real"), value: 0,),
                              DropdownMenuItem(child: Text("Dolar"), value: 1,),
                            ], onChanged: (value)=>{},
                            value: 1,
                            ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      const Expanded(
                        flex: 3,
                        child: TextField(
                          decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
                            enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber))
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromRGBO(128,128,0, 100))
                  ),
                  onPressed: (){}, 
                  child: const Text("CONVERTER"))
                
              ],
            ),
          ),
        ),
      );
  }
}