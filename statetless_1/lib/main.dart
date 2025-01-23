import 'package:flutter/material.dart';

// função principal que inicia o aplicatico
void main() {
  runApp(Aplicativo());
}

// Criando minha classe própria
// stateless é estático, não muda, carrega só uma vez
class Aplicativo extends StatelessWidget{
  
  const Aplicativo({super.key});

  // @voerride quer dizer que vai sobrescrever a tela
  // build é o widget que vai construir toda tela
  // MaterialApp é o que personaliza o tema
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.android_outlined, size: 40),
          title: Text('Flutter é divertido!'),
          backgroundColor: Colors.deepPurple[700],
        ),

        // body é o corpo e Center é centralizar
        body: Center(
          // organiza em colunas
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // children serve para colocar vários widgets um atrás do outro
            children: [
              Container( 
                color: const Color.fromARGB(255, 46, 46, 51),
                height: 552,
                width: 393,
                padding: EdgeInsets.only(top: 250),
                child: Text(
                  "Olá mundo!", textAlign: TextAlign.center,
                   style: TextStyle(fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
      
  }
}