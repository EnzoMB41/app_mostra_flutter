import 'package:flutter/material.dart';
import 'segundapag.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(//parte de cima // a faixa
      title: 'São Cristóvão e Névis',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(171, 255, 0, 0),
        ),
      ),
      home: const MyHomePage(
        title: 'São Cristóvão e Névis 🇰🇳',
      ),
      debugShowCheckedModeBanner: false,//tira a faixa do debug (amém!)
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,//muda o fundo

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 0, 0) ,
        title: Text(widget.title),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text(
                  'História de São Cristóvão e Névis',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                const Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16),
                    child: Text(
                      'São Cristóvão e Neves é um pequeno país localizado no Caribe, formado pelas ilhas de São Cristóvão e Neves, sendo atualmente a menor nação das Américas em território e população. Antes da chegada dos europeus, as ilhas eram habitadas por povos indígenas aruaques e caribes. Em 1493, o navegador Cristóvão Colombo chegou à região durante sua segunda viagem ao continente americano. A partir do século XVII, ingleses e franceses iniciaram a colonização das ilhas, que se tornaram importantes produtoras de açúcar graças ao trabalho de africanos escravizados. Durante muitos anos, as ilhas foram disputadas entre as duas potências europeias, até passarem definitivamente para o domínio britânico em 1783. Em 1882, São Cristóvão, Neves e Anguila foram unidas em uma única colônia britânica, mas Anguila se separou posteriormente. Em 19 de setembro de 1983, São Cristóvão e Neves conquistou sua independência do Reino Unido e tornou-se uma nação soberana integrante da Commonwealth of Nations. Atualmente, sua economia é baseada principalmente no turismo, nos serviços financeiros e nos investimentos estrangeiros, preservando uma rica herança cultural influenciada por suas raízes africanas, europeias e indígenas.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/neves.webp',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SegundaPag(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(//deixa o botao mais bonito
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  child: const Text('Próxima página'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}