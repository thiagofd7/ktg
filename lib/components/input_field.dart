import 'package:flutter/material.dart';
class CustomInputField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool isPassword;

  const CustomInputField({
    Key? key,
    required this.label,
    required this.icon,
    this.isPassword = false,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomInputFieldState createState() => _CustomInputFieldState();
}

class _CustomInputFieldState extends State<CustomInputField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            widget.label,
            style: const TextStyle(
              color: Color(0xFFCBF55C),
              fontFamily: 'Inter',
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: 234,
          height: 34,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xFFCBF55C),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  widget.icon,
                  color: const Color(0xFF520094),
                ),
              ),
              Expanded(
                child: TextField(
                  obscureText: widget.isPassword ? _isObscure : false,
                  style: const TextStyle(
                    color: Color(0xFF520094),
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: -8, top: -12),
                  ),
                ),
              ),
              if (widget.isPassword)
                IconButton(
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  icon: Transform.translate(
                    offset:
                        const Offset(0, -2), // Mova o ícone 2 pixels para cima
                    child: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
