import 'package:flutter/material.dart';
import '../screens/login.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  static Future<void> showLogOutConfirmationDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Confirmar'),
          content: const Text('Tem certeza de que realmente deseja sair?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o diálogo
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o diálogo
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const LoginPage()), // Use a tela que deseja navegar aqui
                );                
              },
              child: const Text('Sair'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Configurações'),
    );
  }
}
