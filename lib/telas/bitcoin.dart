import 'package:flutter/material.dart';
import '../componentes/botao_form.dart';
import '../componentes/valor_variacao.dart';

class Bitcoin extends StatefulWidget {
  const Bitcoin({super.key});

  @override
  State<Bitcoin> createState() => _BitcoinState();
}

class _BitcoinState extends State<Bitcoin> {
  irProximo() {
    Navigator.pushNamed(context, '/moeda');
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final blockchaininfo = args['blockchain'];
    final variacaoBlockchaininfo = args['variacaoBlockchaininfo'];

    final bitstamp = args['bitstamp'];
    final variacaoBitstamp = args['variacaoBitstamp'];

    final mercadoBitcoin = args['mercadoBitcoin'];
    final variacaoMercadoBitcoin = args['variacaoMercadoBitcoin'];

    final coinBase = args['coinbase'];
    final variacaoCoinBase = args['variacaoCoinBase'];

    final foxbit = args['foxbit'];
    final variacaoFoxbit = args['variacaoFoxbit'];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 242, 239),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 9, 95, 35),
            title: const Text("Finanças de hoje")),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(555.0, 25.0, 16.0, 25.0),
                      child: Text(
                        "Bitcoin",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    width: 450,
                    height: 230,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      40.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "Blockchain.Info",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      16.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "CoinBase",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      40.0, 4.0, 16.0, 5.0),
                                  child: Text(
                                    blockchaininfo,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      04.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao: double.parse(
                                          variacaoBlockchaininfo))),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      16.0, 4.0, 16.0, 5.0),
                                  child: Text(
                                    coinBase,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      04.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao:
                                          double.parse(variacaoCoinBase))),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      40.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "BitStamp",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      16.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "FoxBit",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      40.0, 4.0, 16.0, 5.0),
                                  child: Text(
                                    bitstamp,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      04.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao:
                                          double.parse(variacaoBitstamp))),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      16.0, 4.0, 16.0, 5.0),
                                  child: Text(
                                    foxbit,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      04.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao:
                                          double.parse(variacaoFoxbit))),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(40.0, 20.0, 0.0, 5.0),
                                  child: Text(
                                    "Mercado Bitcoin",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      40.0, 4.0, 16.0, 5.0),
                                  child: Text(
                                    mercadoBitcoin,
                                    style: const TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao: double.parse(
                                          variacaoMercadoBitcoin))),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Botao(funcao: irProximo, texto: 'Página Principal')
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
