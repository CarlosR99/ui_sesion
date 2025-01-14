import 'package:flutter/material.dart';

class AuthBackgroud extends StatelessWidget {
  final Widget child;
  const AuthBackgroud({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          const _PurpleBackgroud(),
          const _HeaderIcon(),
          child
        ],
      ),
    );
  }
}

class _HeaderIcon extends StatelessWidget {
  const _HeaderIcon();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 80),
      child: const Icon(Icons.person_pin, color: Colors.white, size: 100),
    ));
  }
}

class _PurpleBackgroud extends StatelessWidget {
  const _PurpleBackgroud();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height * 0.50,
        decoration: _purpleBackground(),
        child: const Stack(
          children: [
            Positioned(top: 90, left: 30, child: _Bubble()),
            Positioned(top: -40, left: -30, child: _Bubble()),
            Positioned(top: -50, right: -20, child: _Bubble()),
            Positioned(bottom: -50, right: 10, child: _Bubble()),
            Positioned(bottom: 120, right: 20, child: _Bubble()),
            Positioned(bottom: -50, left: -20, child: _Bubble()),
          ],
        ));
  }

  BoxDecoration _purpleBackground() => const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(63, 63, 156, 1),
            Color.fromRGBO(90, 70, 178, 1),
          ],
        ),
      );
}

class _Bubble extends StatelessWidget {
  const _Bubble();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: _bubbleDecoration(),
    );
  }

  BoxDecoration _bubbleDecoration() => BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromRGBO(255, 255, 255, 0.05),
      );
}
