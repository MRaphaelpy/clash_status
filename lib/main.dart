import 'package:clash_status/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

void main() async{
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:MyApp() ,
  ),);
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      navigator:const HomePage(),
      title:const Text(
        "Clash Status",
        style: TextStyle(color: Colors.black,
        fontFamily: 'clash',
        ),
      ),
      logo: Image.asset('images/inicial.png'),
    );
  }
  
}
