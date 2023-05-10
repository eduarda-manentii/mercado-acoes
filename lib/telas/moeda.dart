import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import '../componentes/botao_form.dart';
import '../componentes/valor_variacao.dart';

class Moeda extends StatefulWidget {
  const Moeda({super.key});

  @override
  State<Moeda> createState() => _MoedaState();
}

class _MoedaState extends State<Moeda> {
  //variaveis para a url de moeda
  double dolar = 0;
  double variacaoDolar = 0;
  double euro = 0;
  double variacaoEuro = 0;
  double peso = 0;
  double variacaoPeso = 0;
  double yen = 0;
  double variacaoYen = 0;

  //variaveis para a url bitcoin
  double blockchaininfo = 0;
  double variacaoBlockchaininfo = 0;
  double bitstamp = 0;
  double variacaoBitstamp = 0;
  double mercadoBitcoin = 0;
  double variacaoMercadoBitcoin = 0;
  double coinBase = 0;
  double variacaoCoinBase = 0;
  double foxbit = 0;
  double variacaoFoxbit = 0;

  //variaveis para a url ações
  double ibovespa = 0;
  double variacaoIbovespa = 0;
  double nasdaq = 0;
  double variacaoNasdaq = 0;
  double cac = 0;
  double variacaoCac = 0;
  double ifix = 0;
  double variacaoIfix = 0;
  double donwjones = 0;
  double variacaoDonwjones = 0;
  double nikkei = 0;
  double variacaoNikkei = 0;

  importaValores() async {
    const String urlMoeda =
        "https://api.hgbrasil.com/finance?key=7dcad245&format=json-cors";
    Response respostaMoeda = await get(Uri.parse(urlMoeda));
    Map moeda = json.decode(respostaMoeda.body);

    setState(() {
      dolar = double.parse("${moeda['results']['currencies']['USD']['buy']}");
      variacaoDolar =
          double.parse("${moeda['results']['currencies']['USD']['variation']}");

      euro = double.parse("${moeda['results']['currencies']['EUR']['buy']}");
      variacaoEuro =
          double.parse("${moeda['results']['currencies']['EUR']['variation']}");

      peso = double.parse("${moeda['results']['currencies']['ARS']['buy']}");
      variacaoPeso =
          double.parse("${moeda['results']['currencies']['ARS']['variation']}");

      yen = double.parse("${moeda['results']['currencies']['JPY']['buy']}");
      variacaoYen =
          double.parse("${moeda['results']['currencies']['JPY']['variation']}");
    });

    const String urlBitcoin =
        "https://api.hgbrasil.com/finance?key=7dcad245&format=json-cors";
    Response respostBitcoin = await get(Uri.parse(urlBitcoin));
    Map bitcoin = json.decode(respostBitcoin.body);
    setState(() {
      blockchaininfo = double.parse(
          "${bitcoin['results']['bitcoin']['blockchain_info']['last']}");
      variacaoBlockchaininfo = double.parse(
          "${bitcoin['results']['bitcoin']['blockchain_info']['variation']}");
      bitstamp =
          double.parse("${bitcoin['results']['bitcoin']['bitstamp']['last']}");
      variacaoBitstamp = double.parse(
          "${bitcoin['results']['bitcoin']['bitstamp']['variation']}");

      mercadoBitcoin = double.parse(
          "${bitcoin['results']['bitcoin']['mercadobitcoin']['last']}");
      variacaoMercadoBitcoin = double.parse(
          "${bitcoin['results']['bitcoin']['mercadobitcoin']['variation']}");
      coinBase =
          double.parse("${bitcoin['results']['bitcoin']['coinbase']['last']}");
      variacaoCoinBase = double.parse(
          "${bitcoin['results']['bitcoin']['coinbase']['variation']}");
      foxbit =
          double.parse("${bitcoin['results']['bitcoin']['foxbit']['last']}");
      variacaoFoxbit = double.parse(
          "${bitcoin['results']['bitcoin']['foxbit']['variation']}");
    });

    const String urlAcoes =
        "https://api.hgbrasil.com/finance?key=7dcad245&format=json-cors";
    Response respostaAcoes = await get(Uri.parse(urlAcoes));
    Map acoes = json.decode(respostaAcoes.body);
    setState(() {
      ibovespa =
          double.parse("${acoes['results']['stocks']['IBOVESPA']['points']}");
      variacaoIbovespa = double.parse(
          "${acoes['results']['stocks']['IBOVESPA']['variation']}");
      nasdaq =
          double.parse("${acoes['results']['stocks']['NASDAQ']['points']}");
      variacaoNasdaq =
          double.parse("${acoes['results']['stocks']['NASDAQ']['variation']}");

      cac = double.parse("${acoes['results']['stocks']['CAC']['points']}");
      variacaoCac =
          double.parse("${acoes['results']['stocks']['CAC']['variation']}");
      ifix = double.parse("${acoes['results']['stocks']['IFIX']['points']}");
      variacaoIfix =
          double.parse("${acoes['results']['stocks']['IFIX']['variation']}");
      donwjones =
          double.parse("${acoes['results']['stocks']['DOWJONES']['points']}");
      variacaoDonwjones = double.parse(
          "${acoes['results']['stocks']['DOWJONES']['variation']}");
      nikkei =
          double.parse("${acoes['results']['stocks']['NIKKEI']['points']}");
      variacaoNikkei =
          double.parse("${acoes['results']['stocks']['NIKKEI']['variation']}");
    });
  }

  irProximo() {
    Navigator.pushNamed(context, '/acoes', arguments: {
      //acoes
      'ibovespa': ibovespa.toStringAsFixed(2),
      'variacaoIbovespa': variacaoIbovespa.toStringAsFixed(2),
      'nasdaq': nasdaq.toStringAsFixed(2),
      'variacaoNasdaq': variacaoNasdaq.toStringAsFixed(2),
      'cac': cac.toStringAsFixed(2),
      'variacaoCac': variacaoCac.toStringAsFixed(2),
      'ifix': ifix.toStringAsFixed(2),
      'variacaoIfix': variacaoIfix.toStringAsFixed(2),
      'dowjones': donwjones.toStringAsFixed(2),
      'variacaoDonwjones': variacaoDonwjones.toStringAsFixed(2),
      'nikkei': nikkei.toStringAsFixed(2),
      'variacaoNikkei': variacaoNikkei.toStringAsFixed(2),

      //bitcoin
      'bitstamp': bitstamp.toStringAsFixed(2),
      'variacaoBitstamp': variacaoBitstamp.toStringAsFixed(3),
      'foxbit': foxbit.toStringAsFixed(2),
      'variacaoFoxbit': variacaoFoxbit.toStringAsFixed(3),
      'coinBase': coinBase.toStringAsFixed(2),
      'variacaoCoinBase': variacaoCoinBase.toStringAsFixed(3),
      'mercadoBitcoin': mercadoBitcoin.toStringAsFixed(2),
      'variacaoMercadoBitcoin': variacaoMercadoBitcoin.toStringAsFixed(3),
      'blockchaininfo': blockchaininfo.toStringAsFixed(2),
      'variacaoBlockchaininfo': variacaoBlockchaininfo.toStringAsFixed(3),
    });
  }

  @override
  void initState() {
    super.initState();
    importaValores();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 242, 239),
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 9, 95, 35),
            title: const Text("Finanças de hoje")),
        body: Column(
          children: [
            //titulo da página
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Expanded(
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(555.0, 25.0, 16.0, 25.0),
                      child: Text(
                        "Moedas",
                        style: TextStyle(fontSize: 18),
                      )),
                ),
              ],
            ),
            //tabela
            Column(
              children: [
                Center(
                  child: Container(
                      width: 330,
                      height: 150,
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
                                    "Dólar",
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      16.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "Euro",
                                    style: TextStyle(fontSize: 18),
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
                                    40.0, 1.0, 0.0, 1.0),
                                child: Text(
                                  dolar.toStringAsFixed(4),
                                  style: const TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 0.0, 0.0, 0.0),
                                  child: ValorVariacao(
                                      valorVariacao: variacaoDolar)),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    euro.toStringAsFixed(4),
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
                                      valorVariacao: variacaoEuro)),
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
                                    "Peso",
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: EdgeInsets.fromLTRB(
                                      16.0, 20.0, 16.0, 5.0),
                                  child: Text(
                                    "Yen",
                                    style: TextStyle(fontSize: 18),
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      40.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    peso.toStringAsFixed(4),
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
                                      valorVariacao: variacaoPeso)),
                            ),
                            Expanded(
                              child: Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    yen.toStringAsFixed(4),
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
                                      valorVariacao: variacaoYen)),
                            ),
                          ],
                        ),
                      ])),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Botao(funcao: irProximo, texto: 'Ir para Ações')],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
