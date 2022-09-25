import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //here call Google Translator

  GoogleTranslator translator = GoogleTranslator();

  //lets convert some language using English to Hindi

  String text = "Hello! How are you?";

  //creating a function that wil goona help use in translating language

  void translate() {
    translator.translate(text, to: "hi").then((output) {
      setState(() {
        text = 'output';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Language Translator"),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(text),
                ElevatedButton(
                  onPressed: () {
                    translate();
                  },
                  child: Text("Translate the text"),
                )
              ]),
        ));
  }
}
