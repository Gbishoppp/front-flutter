import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Pesquisa());
  }
}

class Pesquisa extends StatefulWidget {
  const Pesquisa({super.key});

  @override
  State<Pesquisa> createState() => _PesquisaState();
}

class _PesquisaState extends State<Pesquisa> {
  TextEditingController dadoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('AppBar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ))),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3),
              ),
              child: Column(children: [
                Stack(
                  alignment: AlignmentDirectional.centerEnd,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    TextFormField(
                      controller: dadoController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'digite o codigo de barras',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Icon(
                        Icons.search,
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ),
        ));
  }
}
