import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffB388EB),
      body: Center(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(80),
                    bottomLeft: Radius.circular(50)),
              ),
              child: const Column(
                children: [
                  SizedBox(height: 15),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'S.O.S.',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Boohong',
                          color: Color(0xffF5E9E2),
                        ),
                      ),
                      Text(
                        'MUJER',
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Boohong',
                          color: Color(0xffF5E9E2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8),
              width: 700,
              height: 700,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Image.asset('assets/fondo.png'),
                  const Positioned(
                    top: 80,
                    left: 20,
                    right: 20,
                    child: TitleBox(),
                  ),
                  const Positioned(
                    top: 115,
                    height: 3,
                    left: 35,
                    right: 35,
                    child: LineaDecora(),
                  ),
                  const Positioned(
                    top: 150,
                    left: 20,
                    right: 20,
                    child: DescriptionBox(),
                  ),
                  const Positioned(
                    top: 350,
                    left: 35,
                    right: 35,
                    child: BottomPag(),
                  ),
                  const Positioned(
                    top: 450,
                    left: 35,
                    right: 35,
                    child: LogoMorado(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TitleBox extends StatelessWidget {
  const TitleBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Bienvenidas a S.O.S. MUJER',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class DescriptionBox extends StatelessWidget {
  const DescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Tu refugio digital en España. Ayuda inmediata en situaciones de violencia. Ingresa ahora y siéntete segura en todo momento.',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class LineaDecora extends StatelessWidget {
  const LineaDecora({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: const Color.fromRGBO(60, 22, 66, 1),
    );
  }
}

class BottomPag extends StatelessWidget {
  const BottomPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xffB388EB),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 50,
            right: 50,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xff3C1642),
                          Color.fromARGB(255, 90, 33, 99),
                          Color.fromARGB(255, 119, 44, 131),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      textStyle: const TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      launchUrl(Uri.https('expoaccion.org', '/sos-mujer' ));
                    },
                    child: const Text(
                      'IR A LA APP',
                      style: TextStyle(
                        color: Color(0xffF5E9E2),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class LogoMorado extends StatelessWidget {
  const LogoMorado({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(
          width: 120,
          height: 120,
          child: Image.asset('assets/morado.png'),
        )
      ],
    );
  }
}
