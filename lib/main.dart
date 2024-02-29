import 'package:flutter/material.dart';

void main() => runApp(AppTabBar());

class AppTabBar extends StatelessWidget {
  const AppTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo TabBar",
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MiPaginaInicial(),
    );
  }
}

class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
}

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("TabBar Jorge Meza"),
          bottom: TabBar(tabs: [
            Tab(
              text: "refa1",
              icon: Icon(Icons.account_box_rounded),
            ),
            Tab(
              text: "refa2",
              icon: Icon(Icons.account_box_rounded),
            ),
            Tab(
              text: "refa3",
              icon: Icon(Icons.account_box_rounded),
            ),
            Tab(
              text: "refa4",
              icon: Icon(Icons.account_box_rounded),
            ),
          ] //Texto Icono
              ),
        ),
        body: const TabBarView(children: <Widget>[
          Center(
            child: Text(
              "Alerta",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Alerta 2",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Alerta 3",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
          ),
          Center(
            child: Text(
              "Alerta 4",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
            ),
          )
        ]),
      ),
    );
  }
}
