import 'package:clash_status/textsfilds/inicial_textfild.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   // var hi = MediaQuery.of(context).size.height;
   // var wh = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            children: [
              Container(
                margin:const EdgeInsets.symmetric(vertical: 10),
                child:const Center(
                  child: Text(
                    "Insira sua Tag para\nver seu perfil",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'clash',
                    ),
                  ),
                ),
              ),
              Container(
                margin:const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child:const InicialTextFild(),
              ),
              // ignore: avoid_unnecessary_containers
              Container(
                child: Image.asset('images/king.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
