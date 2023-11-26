import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    'assets/images/4027496_15916-removebg-preview.png',
                    height: 240,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                //titulo
                const Text(
                  "Loja do PC",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 232, 232, 232)
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                //subtitulo
                const Text(
                  "Os melhores Preços",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 48,
                ),
                //botao
                GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage(),
                      )),
                  child: Container(
                    width: 400,
                    decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: Text("Comprar Agora",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
