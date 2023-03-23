import 'package:aula_novos_talentos/routes.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () async {
            final dynamic resultado =
                await Navigator.of(context).pushNamed(AppRoutes.homeScreen);

            print("Resultado é: $resultado ");
          },
          child: const Text('Navegar para Home'),
        ),
      ),
    );
  }
}
