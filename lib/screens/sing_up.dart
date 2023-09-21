import 'package:flutter/material.dart';

import 'login.dart';
import '../components/popup.dart';
import './../components/input_field.dart';
class SingUp extends StatelessWidget {
  const SingUp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF520094),
        body: Stack(
          children: [
            Center(
              child: Container(
                width: 375,
                height: 426,
                decoration: const BoxDecoration(
                  color: Color(0xFF520094),
                ),
                child: Center(
                  child: Container(
                    width: 286,
                    height: 500,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF45007B),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Criar Conta',
                          style: TextStyle(
                            color: Color(0xFFCBF55C),
                            fontFamily: 'Inter',
                            fontSize: 45,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20),
                        const CustomInputField(label: 'Usuário', icon: Icons.person,),
                        const SizedBox(height: 10),
                        const CustomInputField(label: 'E-mail', icon: Icons.email),
                        const SizedBox(height: 10),
                        const CustomInputField(
                            label: 'Senha', isPassword: true, icon: Icons.lock),
                        const SizedBox(height: 10),
                        const CustomInputField(
                            label: 'Confirmar Senha', isPassword: true,
                            icon: Icons.lock),
                        const SizedBox(height: 30),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 130,
                            right: 0,
                            bottom: 24,
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const LoginPage()), // Use a tela que deseja navegar aqui
                              );
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return const CoolPopUp(
                                    title: 'Seja Bem Vindo!',
                                    message: 'Conta Criada Com Sucesso!',
                                  );
                                },
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFCBF55C),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 8,
                              ),
                              child: Text(
                                'Next',
                                style: TextStyle(
                                  color: Color(0xFF520094),
                                  fontFamily: 'Inter',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                color: const Color(0xFF520094),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        // ignore: avoid_print
                        print('Botão "Log In" pressionado!');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'Entrar',
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFCBF55C),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}