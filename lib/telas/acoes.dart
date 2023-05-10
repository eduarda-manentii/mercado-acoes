import 'package:flutter/material.dart';
import '../componentes/botao_form.dart';
import '../componentes/valor_variacao.dart';

class Acoes extends StatefulWidget {
  const Acoes({super.key});

  @override
  State<Acoes> createState() => _AcoesState();
}

class _AcoesState extends State<Acoes> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    final ibovespa = args['ibovespa'];
    final variacaoIbovespa = args['variacaoIbovespa'];

    final nasdaq = args['nasdaq'];
    final variacaoNasdaq = args['variacaoNasdaq'];

    final cac = args['cac'];
    final variacaoCac = args['variacaoCac'];

    final ifix = args['ifix'];
    final variacaoIfix = args['variacaoIfix'];

    final dowjones = args['dowjones'];
    final variacaoDonwjones = args['variacaoDonwjones'];

    final nikkei = args['nikkei'];
    final variacaoNikkei = args['variacaoNikkei'];

    final blockchaininfo = args['blockchaininfo'];
    final variacaoBlockchaininfo = args['variacaoBlockchaininfo'];

    final bitstamp = args['bitstamp'];
    final variacaoBitstamp = args['variacaoBitstamp'];

    final mercadoBitcoin = args['mercadoBitcoin'];
    final variacaoMercadoBitcoin = args['variacaoMercadoBitcoin'];

    final coinBase = args['coinBase'];
    final variacaoCoinBase = args['variacaoCoinBase'];

    final foxbit = args['foxbit'];
    final variacaoFoxbit = args['variacaoFoxbit'];

    irProximo() {
      Navigator.pushNamed(context, '/bitcoin', arguments: {
        'bitstamp': bitstamp,
        'variacaoBitstamp': variacaoBitstamp,
        'foxbit': foxbit,
        'variacaoFoxbit': variacaoFoxbit,
        'coinbase': coinBase,
        'variacaoCoinBase': variacaoCoinBase,
        'mercadoBitcoin': mercadoBitcoin,
        'variacaoMercadoBitcoin': variacaoMercadoBitcoin,
        'blockchain': blockchaininfo,
        'variacaoBlockchaininfo': variacaoBlockchaininfo
      });
    }

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
                        "Ações",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Container(
                      width: 480,
                      height: 220,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      40.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "IBOVESPA",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      16.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "IFIX",
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
                                    ibovespa,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao:
                                          double.parse(variacaoIbovespa))),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      16.0, 4.0, 16.0, 5.0),
                                  child: Text(
                                    ifix,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      04.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao:
                                          double.parse(variacaoIfix))),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      40.0, 20.0, 22.0, 5.0),
                                  child: Text(
                                    "NASDAQ",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      16.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "DOWJONES",
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
                                      40.0, 4.0, 10.0, 5.0),
                                  child: Text(
                                    nasdaq,
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
                                          double.parse(variacaoNasdaq))),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      16.0, 4.0, 16.0, 5.0),
                                  child: Text(
                                    dowjones,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      04.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao:
                                          double.parse(variacaoDonwjones))),
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
                                    "CAC",
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      16.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "NIKKEI",
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
                                    cac,
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
                                          double.parse(variacaoCac))),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      16.0, 4.0, 16.0, 5.0),
                                  child: Text(
                                    nikkei,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      04.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao:
                                          double.parse(variacaoNikkei))),
                            ),
                          ],
                        ),
                      ])),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Botao(funcao: irProximo, texto: 'Ir para BitCoin')
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
