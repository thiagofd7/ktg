import 'package:flutter/material.dart';



class HomeTela extends StatefulWidget {
  const HomeTela({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeTelaState createState() => _HomeTelaState();
}

class _HomeTelaState extends State<HomeTela> {
  String centralImage = 'assets/images/pride.png';

  void changeCentralImage(String newImage) {
    setState(() {
      centralImage = newImage;
    });
  }

  @override
  Widget build(BuildContext context) {
    const textColor = Color(0xFFCBF55C);
    const footerColor = Color(0xFF520094); // Cor de fundo do rodapé

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: footerColor, // Cor de fundo do corpo
        body: Center(
          child: GestureDetector(
            onVerticalDragUpdate: (details) {
              Scrollable.ensureVisible(context);
            },
            child: Column(
              children: [
                const SizedBox(height: 20), // Espaço entre o topo da tela e as imagens
                Container(
                  width: 333,
                  height: 68,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFF5E00A8),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.25),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildImageButton('assets/images/image7.png', 'assets/images/pride.png'),
                      _buildImageButton('assets/images/image8.png', 'assets/images/blond.png'),
                      _buildImageButton('assets/images/image9.png', 'assets/images/xd.png'),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Espaço entre as imagens e o próximo conteúdo
                Center(
                  child: Container(
                    width: 286, // Largura ajustada
                    height: 319, // Altura ajustada
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFF5E00A8), // Cor de fundo
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
                                  centralImage,
                                  // Mantenha o tamanho original da imagem
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  centralImage.split('/').last.replaceAll('.png', ''),
                                  style: const TextStyle(
                                    color: textColor,
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
                        _buildCustomDotSlider(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImageButton(String assetPath, newimg) {
    return GestureDetector(
      onTap: () {
        changeCentralImage(newimg);
      },
      child: Image.asset(
        assetPath,
        width: 68, // Tamanho dos botões ajustado
        height: 68, // Tamanho dos botões ajustado
      ),
    );
  }

  Widget _buildCustomDot(cor) {
    return Container(
      width: 26.286,
      height: 6.857,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: cor, // Use a cor desejada em vez de Color(0xFFF2F2F2)
      ),
    );
  }

  Widget _buildCustomDotSlider() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildCustomDot(const Color(0xFFCBF55C)),
        const SizedBox(width: 16),
        _buildCustomDot(const Color(0xFFF2F2F2)),
        const SizedBox(width: 16),
        _buildCustomDot(const Color(0xFFF2F2F2)),
      ],
    );
  }
}
