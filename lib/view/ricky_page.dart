import 'package:first_flutter_app/main.dart';
import 'package:first_flutter_app/view/mypage.dart';
import 'package:first_flutter_app/view/widgets/new_screen.dart';
import 'package:flutter/material.dart';

//Tela pode ser reconstruída - tem um setState
class RickyPage extends StatefulWidget {
  const RickyPage({super.key});

  @override
  State<RickyPage> createState() => _RickyPageState();
}

class _RickyPageState extends State<RickyPage> {
  String frase = "OK"; //criei string
  bool showBlue = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Login"),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: senhaController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Senha',
            ),
          ),
          ElevatedButton(
              // Within the `FirstRoute` widget
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyPage()),
                );
              },
              child: Text("New Screen")),
          Expanded(
            flex: 2,
            child: Container(
              width: 200,
              color: Colors.blueGrey,
              child: Text(frase),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              width: 200,
              color: Colors.red,
              child: Text(frase),
            ),
          ),
          if (showBlue)
            Expanded(
              flex: 2,
              child: Container(
                width: 200,
                color: Colors.blue,
                child: Text(frase),
              ),
            ),
          Text(emailController.text),
          Text(senhaController.text),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(emailController.text);
          print(senhaController.text);
          //Esse comando atualiza (faz rebuild da tela!)
          setState(() {
            frase = "Nova mensagem...";
            showBlue = !showBlue;
          });
        },
        child: Text("Clique"),
      ),
    );
  }
}
