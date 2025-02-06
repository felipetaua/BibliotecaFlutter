import 'package:flutter/material.dart';
import 'package:statetless_1/paginaInicial.dart';

// função principal que inicia o aplicatico
void main() {
  runApp(home());
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Aplicativo(),
    );
  }
}

// Criando minha classe própria
// stateless é estático, não muda, carrega só uma vez
class Aplicativo extends StatelessWidget {
  const Aplicativo({super.key});

  // @voerride quer dizer que vai sobrescrever a tela
  // build é o widget que vai construir toda tela
  // MaterialApp é o que personaliza o tema
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              height: 550,
              width: 390,
              padding: EdgeInsets.only(top: 250),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 46, 46, 51),
                borderRadius: BorderRadius.all(Radius.circular(32)),
              ),
              child: Text(
                "Olá mundo!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Row(
              // tipo de espaçamento
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              // widget com filhos
              children: [
                Icon(
                  Icons.leaderboard,
                  color: Colors.deepPurple[700],
                ),
                Icon(
                  Icons.person,
                  color: Colors.deepPurple[700],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {
                    print("parabens! Funcionou!");
                  },
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.school), label: "Escola"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "Busca"),
        BottomNavigationBarItem(
            icon: Icon(Icons.gavel_rounded), label: "Configuração"),
      ]),

      drawer: Drawer(
        backgroundColor: Colors.deepPurple[500],
        child: ListView(
          padding: EdgeInsets.zero, //zerar padding
          children: [
            DrawerHeader(child: Text('texto de cabeçalho')),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Perfil"),
              onTap: () {
                print("entrou no perfil");
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Página Inicial"),
              onTap: () {
                //fechar menu lateral
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaginaInicial()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Configurações"),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
