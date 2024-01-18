import 'package:flutter/material.dart';

class CurrencyLinebox extends StatelessWidget {
  const CurrencyLinebox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 65,
                    child: DropdownButton(
                      iconEnabledColor: Colors.amber,
                      isExpanded: true,
                      underline: Container(
                        height: 1,
                        color: Colors.amber,
                      ),
                      items: const [
                        DropdownMenuItem(value: 0, child: Text("Real")),
                        DropdownMenuItem(value: 1, child: Text("Dolar")),
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
            );
  }
}