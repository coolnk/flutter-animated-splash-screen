import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: 'Khari'),
      //home: const MyHomePage(title: 'Something is not working'),
      home: const SplashScreen(),
    );
  }
}

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('मेरा कथाहरू'),
        centerTitle: true,
      ),
      body: Center(
          child: AnimatedSplashScreen(
              splash: Container(color: const Color.fromARGB(144, 81, 146, 141)),
              backgroundColor: Colors.white,
              nextScreen: const Home(),
              animationDuration: const Duration(seconds: 5),
              pageTransitionType: PageTransitionType.leftToRight)),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('मेरा कथाहरू',
            style: TextStyle(fontFamily: 'Khari', fontSize: 35.0, shadows: [
              Shadow(
                  color: Colors.black, offset: Offset(0.5, 0.5), blurRadius: 15)
            ])),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: const Center(
        child: Image(image: AssetImage('assets/nepaligirl.jpg')),
      ),
    );
  }
}
