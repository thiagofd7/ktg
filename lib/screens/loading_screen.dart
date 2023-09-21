import 'package:flutter/material.dart';
import 'login.dart';

class MyLoadingScreen extends StatefulWidget {
  const MyLoadingScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyLoadingScreenState createState() => _MyLoadingScreenState();
}

class _MyLoadingScreenState extends State<MyLoadingScreen> {
  @override
  void initState() {
    super.initState();
    // Simular um tempo de carregamento (por exemplo, uma requisição de rede)
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginPage(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF520094),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png', 
            width: 600, 
            height: 600, 
          ),
        ),
      ),
    );
  }
}
