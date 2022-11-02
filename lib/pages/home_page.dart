import 'package:flutter/material.dart';

import '../constants.dart';
import '../theme.dart';
import '../widgets/logo.dart';
import '../widgets/recordes.dart';
import '../widgets/start_button.dart';
import 'nivel_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  selecionarNivel(Modo modo, BuildContext context) async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NivelPage(modo: modo),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            Button(
              title: 'Modo Normal',
              color: Colors.white,
              action: () => selecionarNivel(Modo.normal, context),
            ),
            Button(
              title: 'Modo Dificil',
              color: Color.fromARGB(255, 86, 29, 255),
              action: () => selecionarNivel(Modo.round6, context),
            ),
            Button(
              title: 'Modo Round 6',
              color: Round6Theme.color,
              action: () => selecionarNivel(Modo.round6, context),
            ),
            const SizedBox(height: 80),
            const Recordes(),
          ],
        ),
      ),
    );
  }
}
