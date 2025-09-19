import 'package:flutter/cupertino.dart';

class Gendercard extends StatelessWidget {
  final String label;
  final bool isActive;
  final IconData icone;
  final VoidCallback ontap;
  const Gendercard({super.key,
    required this.icone,
    required this.isActive,
    required this.label,
    required this.ontap});

  @override
  Widget build(BuildContext context) {

    return const Placeholder();
  }
}
