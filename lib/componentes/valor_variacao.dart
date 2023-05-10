import 'package:flutter/material.dart';

class ValorVariacao extends StatefulWidget {
  final double valorVariacao;
  const ValorVariacao({
    required this.valorVariacao,
    super.key,
  });

  @override
  State<ValorVariacao> createState() => _ValorVariacaoState();
}

class _ValorVariacaoState extends State<ValorVariacao> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3.0),
            color: widget.valorVariacao >= 0 ? Colors.blue : Colors.red,
          ),
          child: Text(
            widget.valorVariacao >= 0
                ? '+${widget.valorVariacao.toString()}'
                : widget.valorVariacao.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 10,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
