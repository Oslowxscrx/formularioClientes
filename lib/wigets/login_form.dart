// ignore_for_file: unused_field, null_check_always_fails, prefer_is_empty

import 'package:flutter/material.dart';
import 'package:formulario/pages/menu_lateral.dart';
import 'package:formulario/wigets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  late String _email;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Center(
      child: Column(
        children: <Widget>[
          InputText(
              hint: "Email Addres",
              label: "Email",
              keyboard: TextInputType.emailAddress,
              icon: const Icon(Icons.verified_user),
              onChanged: (data) {
                _email = data;
              },
              validator: (data) {
                if (data!.contains("@")) {
                  return 'email invalido';
                }
                return null!;
              }),
          const Divider(
            height: 50.0,
          ),
          InputText(
              hint: "password",
              label: "password",
              obsecure: false,
              icon: const Icon(Icons.lock_clock),
              onChanged: (data) {
                _password = data;
              },
              validator: (data) {
                if (data?.trim().length == 0) {
                  return 'password invalido';
                }
                return null!;
              }),
          const Divider(
            height: 20.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 60.0,
            child: ElevatedButton(
              onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => const MenuLateral());
                    Navigator.push(context, route);
                  },
              child: const Text(
                "Ingresar",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "FreedokaOne",
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
