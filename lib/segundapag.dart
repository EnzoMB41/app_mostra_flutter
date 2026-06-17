import 'package:flutter/material.dart';

class SegundaPag extends StatelessWidget {
  const SegundaPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(//titulo acima do texto
        title: const Text('🎭Cultura São Cristóvão e Névis 🎭'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [

                const Text(
                  'Principais Aspectos Culturais',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                // titulo do carnaval
                const Text(
                  ' Carnaval (Sugar Mas)',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                //aqui e o texto do evento de "carnaval" e bloco dele
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
                      'O Sugar Mas é o carnaval tradicional de São Cristóvão e Névis e representa uma das maiores celebrações culturais do país. Realizado entre dezembro e janeiro, o evento reúne desfiles de fantasias, competições musicais, danças e apresentações artísticas. A festa reflete a mistura das influências africanas e europeias presentes na história da nação, sendo um importante símbolo da identidade cultural e do orgulho nacional.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                Container(//aqui fica o border das imagens
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/sugarmas.webp',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // titulo da musica
                const Text(
                  ' Música e Danças Tradicionais',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                //aqui e o texto da musica e bloco dele
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
                      'A música de São Cristóvão e Névis possui forte influência africana e caribenha. Entre os estilos mais populares estão o calypso, o soca e o reggae, que costumam ser tocados em festivais e celebrações populares. As danças tradicionais acompanham esses ritmos e são marcadas por movimentos animados e coloridos. Outro elemento importante da cultura local são as bandas de steelpan, instrumentos produzidos a partir de tambores metálicos que criam sons característicos da região do Caribe.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/musica.webp',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // local do titulo da culinaria
                const Text(
                  ' Culinária Típica',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                // a parte do texto da culinaria
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
                      'A culinária de São Cristóvão e Névis combina ingredientes tropicais e tradições herdadas de diferentes povos. Entre os pratos mais conhecidos está o Goat Water, um ensopado de carne de cabra preparado com legumes e especiarias. Também são populares pratos feitos com frutos do mar, arroz, coco, banana-da-terra e frutas tropicais. A gastronomia local reflete a diversidade cultural do país e faz parte das celebrações e festivais tradicionais.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                Container(//a borda da img
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 4,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'img/culinaria.webp',
                      width: 400,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(//o botao de voltar
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 12,
                    ),
                  ),
                  child: const Text('Voltar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}