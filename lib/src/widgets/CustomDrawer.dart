import 'package:Globo_Atualidades/src/screens/globocoins.dart';
import 'package:Globo_Atualidades/src/widgets/MenuItem.dart';
import 'package:Globo_Atualidades/src/widgets/MenuList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

  class CustomDrawer extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Drawer(
          child: Column(
        children: [
          Stack(
            children: [
              UserAccountsDrawerHeader(
                accountName: null,
                accountEmail: Text("André Saba", style: TextStyle(color: Colors.white, fontSize: 18)),
                currentAccountPicture: 
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.network(
                        "https://media-exp1.licdn.com/dms/image/C4D03AQFT7rSZWdGlMQ/profile-displayphoto-shrink_800_800/0?e=1594252800&v=beta&t=FPtEvl86vt9UQi6VHV2BzL9618rxcK7rrCC_L2bwYrg",
                        height: 64,
                      ),
                    ),
                decoration: const BoxDecoration(
                  color: Colors.blueAccent,
                ),
              ),
              Container(
                  padding: const EdgeInsets.fromLTRB(50, 95, 20, 0),
                  alignment: Alignment.bottomRight,
                  child: Column(
                    verticalDirection: VerticalDirection.down,
                    children: [
                      Text('450',
                          style:
                              TextStyle(color: Colors.white, fontSize: 22)),
                      Text('Globocoins', style: TextStyle(color: Colors.white, fontSize: 14)),
                      Image.network("https://static.thenounproject.com/png/469244-200.png",
                        height: 44,
                        color: Colors.greenAccent
                      )       
                    ],
                  ))
            ],
          ),
          Expanded(
            child: ListView(children: [
              MenuList(title: "Noticiário", list: [
                MenuItem("Últimas notícias", () => Navigator.of(context).pop()),
                MenuItem("Em alta", () => Navigator.of(context).pop()),
                MenuItem("G1", () => Navigator.of(context).pop()),
                MenuItem("GE", () => Navigator.of(context).pop()),
                MenuItem("Globo Play", () => Navigator.of(context).pop()),
                MenuItem("Rádio Globo", () => Navigator.of(context).pop()),
              ]),
              MenuList(title: "Perfil", list: [
                MenuItem("Editar", () => Navigator.of(context).pop()),
                MenuItem("Mudar preferências", () => Navigator.of(context).pop()),
                MenuItem("Sair", () => Navigator.of(context).pop())
              ]),
              MenuList(title: "Ranking", list: [
                MenuItem("Extrato de pontos", () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext ctx) {
                    return new Globocoins();
                  }))),
                MenuItem("Trocar Globocoins", () => Get.back()),
              ]),
            ]),
          ),
        ],
      ));
    }
  }