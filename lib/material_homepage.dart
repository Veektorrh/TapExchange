import 'package:flutter/material.dart';

class MaterialAppHomepage extends StatefulWidget {

const MaterialAppHomepage ({super.key});

  @override
  State<MaterialAppHomepage> createState() => _MaterialAppHomepageState();
}

class _MaterialAppHomepageState extends State<MaterialAppHomepage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context){
    final border = OutlineInputBorder(
                    borderSide: BorderSide(
                      width:4.0,
                      style: BorderStyle.solid,
                    ),
                   borderRadius: BorderRadius.all(Radius.circular(20)));
  return  Scaffold(
    appBar: AppBar(title: Text('Currency Converter'), centerTitle: true, backgroundColor: const Color.fromARGB(255, 41, 153, 245),),
    backgroundColor: Theme.of(context).colorScheme.primary,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(result == 0 ? 'NGN ${result.toStringAsFixed(0)}': 'NGN ${result.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 12, 12, 12),
                )
                ), 
                Padding(padding: EdgeInsets.all(2.0),
                child:
                TextField(
                  controller: textEditingController,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the ammount in USD',
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border
                  ),
                  keyboardType: TextInputType.numberWithOptions(decimal: true, signed:false),
                )),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 1500;
                  });
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.black),
                  foregroundColor: WidgetStatePropertyAll(Colors.white),
                  minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))
                ), child: Text("Convert", style: TextStyle(fontSize: 20)),)
              ]
                  ),
          ),
              )
          );
  }
}