    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class Globocoins extends StatelessWidget {

      @override
      Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: IconButton(
                  icon: Icon(Icons.close),
                  color: Colors.black,
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
              title: Text("Extrato de Globocoins"),
              centerTitle: true,
              backgroundColor: Colors.blueAccent,
            ),
            body: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          bottom: 64.0 + 32.0,
                          left: 32,
                          right: 32,
                          top: 32),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ContentBuilder(
                              "Globocoins recentes",
                              "Verifique seu extrato abaixo",
                              Padding(
                                padding: EdgeInsets.only(top: 16, bottom: 64),
                                child: Column(children: <Widget>[
                                  Text("+10 - Leu a primeira notícia do dia", style: TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.bold),),
                                  Text("+100 - Cadastrou-se na plataforma", style: TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.bold),)
                                ],),
                              ),
                            ),
                            ContentBuilder(
                                "Missões pendentes",
                                "Verifique abaixo suas missões pendentes",
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 16),
                                  child: Text("Parabéns, você não possui missões pendentes!")
                                )),
                          ]),
                    )),
            );
      }

    Widget ContentBuilder(String title, String description, Widget content) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
        description != null
            ? Text(
                description,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            : Container(),
        content
      ],
    );
  }
}