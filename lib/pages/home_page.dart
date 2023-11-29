import 'package:flutter/material.dart';
import 'package:formulario/pages/sing_in.dart';
import 'package:formulario/wigets/clientes.dart';
import 'package:formulario/wigets/icon_containers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FORMULARIO LOGIN'),
        actions: [],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: <Color>[
              Color.fromARGB(255, 215, 215, 215),
              Color.fromARGB(255, 0, 0, 0),
            ],
            begin: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                IconContainers(url: "images/lennon.jpg"),
                const SizedBox(height: 20.0),
                const Text(
                  "Navidad :D ",
                  style: TextStyle(
                    fontFamily: "VinaSans",
                    fontSize: 30.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Bienvenido",
                  style: TextStyle(
                    fontFamily: "VinaSans",
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: () {
                    final route = MaterialPageRoute(builder: (context) => const SignIn());
                    Navigator.push(context, route);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "FredokaOne",
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                Divider(
                  height: 50.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    final route = MaterialPageRoute(builder: (context) => ClientForm());
                    Navigator.push(context, route);
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Text(
                      "Formulario Clientes",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "FredokaOne",
                        fontSize: 24.0,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
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
}
