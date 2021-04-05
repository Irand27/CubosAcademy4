import 'package:flutter/material.dart';

void main() {
  runApp(Desafio4());
}

class Desafio4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
      children: [
        Expanded(
            child: Container(
                color: Colors.black,
                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                child: Column(
                  children: [
                    ComponentContainer(
                      cor: Colors.white,
                    ),
                    ComponentContainer(
                      cor: Colors.white,
                      margin: EdgeInsets.only(top: 30),
                    ),
                    ComponentContainer(
                      cor: Colors.white,
                      margin: EdgeInsets.only(top: 30),
                    ),
                  ],
                ))),
        Container(
            color: Colors.red,
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  color: Colors.green,
                  height: 35,
                  width: 35,
                ),
                Container(
                  color: Colors.blue,
                  height: 35,
                  width: 35,
                ),
                Container(
                  color: Colors.yellow,
                  height: 35,
                  width: 35,
                ),
              ],
            ))
      ],
    ));
  }
}

class ComponentContainer extends StatelessWidget {
  final Color cor;
  final EdgeInsets margin;

  ComponentContainer({Key key, this.cor, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cor,
      height: 100,
      margin: margin,
    );
  }
}
