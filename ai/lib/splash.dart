import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget{
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState(){
    super.initState();
    goToHome();
  }

  Future<void>  goToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.popAndPushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              'assets/images/mindImage.jpg'
            )
          )
        ),
      ),
    );
  }
}