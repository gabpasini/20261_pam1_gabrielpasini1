import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    // O MaterialApp é o ponto de partida obrigatório para apps Material
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 139, 88, 221)),
        useMaterial3: true,
      ),
      home: const PaginaPrincipal(),
    );
  }
}

class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    // O Scaffold agora está corretamente envolvido pelo MaterialApp
    return Scaffold(
      appBar: AppBar(
        title: const Text('Não Ligo Mais'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      drawer: const Drawer(
        child: Center(child: Text('Se você vai ou se você volta atrás')),
      ),
      body: const Center(
        child: Text('Coração blindado'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.house)
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'eu ja tô em paz demais'),
          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'chorei o que tinha agora tanto faz'),
        ],
      ),
    );
  }
}