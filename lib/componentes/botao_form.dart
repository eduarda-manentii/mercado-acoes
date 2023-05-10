import 'package:flutter/material.dart';

class Botao extends StatefulWidget {
  final funcao;
  final texto;
  const Botao({super.key, this.funcao, this.texto});

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 250, top: 27),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(140, 50),
            foregroundColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 30, 82, 10),
            shadowColor: Colors.black,
            elevation: 30,
          ),
          onPressed: widget.funcao,
          child: Text(widget.texto)),
    );
  }
}
