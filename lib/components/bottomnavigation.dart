import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
import 'logout_popup.dart';
void main() {
  runApp(const MaterialApp(
    home: MyAppNavigation(),
  ));
}

class MyAppNavigation extends StatefulWidget {
  const MyAppNavigation({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyAppNavigationState createState() => _MyAppNavigationState();
}

class _MyAppNavigationState extends State<MyAppNavigation> {
  int _indiceAtual = 1;
  final List<Widget> _telas = [
    const ProfilePage(),
    const HomeTela(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        backgroundColor: const Color(0xFF45007B), // Cor de fundo
        selectedItemColor:
            const Color(0xFFCBF55C), // Cor dos ícones selecionados
        unselectedItemColor: Colors.white, // Cor dos ícones não selecionados
        showSelectedLabels: false, // Oculta os rótulos
        showUnselectedLabels: false, // Oculta os rótulos não selecionados
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Meu Perfil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Página Inicial",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: "LogOut",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    if (index == 2) {
      // Se "LogOut" foi clicado, chame o método de confirmação em SettingPage
      SettingPage.showLogOutConfirmationDialog(context);
    } else {
      setState(() {
        _indiceAtual = index;
      });
    }
  }
}


