import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  //Este tamanho funciona bem no meu design, talvez você precise de alguma personalização depende do seu design

  // Este é Mobile, isTablet, isDesktop ajude-nos mais tarde
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // Se nossa largura for maior que 1100, então o consideramos um desktop
    if (_size.width >= 1100) {
      return desktop;
    }
    // Se a largura for menor que 1100 e maior que 850, consideramos como tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Ou menos do que chamávamos de móvel
    else {
      return mobile;
    }
  }
}
