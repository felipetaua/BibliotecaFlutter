import 'package:flutter/material.dart';

//metodo principal que inicia o app
void main() {
  // roda o que tiver dentro de PaginaInicial
  runApp(PaginaInicial());
}

// A classe pagina inicial vai se referir a todo contexto do app
//essa cçasse vai herdar o comportamento de StatelessWidget
//isso quer dizer que o app é estático, não muda nada na tela
class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  //função que construir as telas do app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[600],
          title: Text("Página Inicial"),
        ),
        body: Center(
          child: Column(
            children: [
              Image.network(
                  'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
                  width: 300,
                  height: 300),
              SizedBox(
                height: 20,
              ),
              Text("Conteúdo da página inicial"),
            ],
          ),
        ),
      ),
    );
  }
}
