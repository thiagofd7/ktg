import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xFFA7CDFF); // Defina a cor desejada para o texto

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF520094),
        body: GestureDetector(
          onVerticalDragUpdate: (details) {
            Scrollable.ensureVisible(context);
          },
          child: ListView.builder(
            itemCount: 5, // Aumentar para 5 itens
            itemBuilder: (context, index) {
              if (index == 4) {
                return Center(
                  child: Container(
                    width: 246,
                    height: 297,
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF45007B),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/playlistpessoal.png',
                                  width: 210,
                                  height: 210,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Sim.',
                                  style: TextStyle(
                                    color: textColor, // Cor do texto
                                    fontFamily: 'Inter',
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    height: 1.07692,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        _buildDotSlider(),
                      ],
                    ),
                  ),
                );
              } else if (index == 0) {
                return Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 119.387, // Altura do banner
                        child: Image.asset(
                          'assets/images/bannerui.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        children: [
                          const SizedBox(height: 50), // Espaço superior para centralizar
                          Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/images/uiperfil.png',
                              width: 152,
                              height: 152,
                            ),
                          ),
                          const Text(
                            'gris',
                            style: TextStyle(
                              color: textColor, // Cor do texto
                              fontFamily: 'Inter',
                              fontSize: 26,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,
                              height: 1.07692,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              } else if (index == 2) {
                return Center(
                  child: Container(
                    width: 345,
                    height: 384,
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF45007B),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildImageWithText(
                              'assets/images/deftones.png',
                              'Sextapes',
                              textColor, // Cor do texto
                            ),
                            _buildImageWithText(
                              'assets/images/not.png',
                              'Not Allowed',
                              textColor, // Cor do texto
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildImageWithText(
                              'assets/images/tvgirl.png',
                              'Lovers rock',
                              textColor, // Cor do texto
                            ),
                            _buildImageWithText(
                              'assets/images/vani.png',
                              'Vanished',
                              textColor, // Cor do texto
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildImageWithText(String imagePath, String text, Color textColor) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: 152,
          height: 152,
        ),
        const SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
            color: textColor, // Cor do texto
            fontFamily: 'Inter',
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildColoredDotWithShadow() {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFA7CDFF),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
    );
  }

  Widget _buildDotWithShadow() {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFFFFFFF),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.25),
          ),
        ],
      ),
    );
  }

  Widget _buildDotSlider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildColoredDotWithShadow(),
        const SizedBox(width: 16),
        _buildDotWithShadow(),
        const SizedBox(width: 16),
        _buildDotWithShadow(),
      ],
    );
  }
}
