import 'package:flutter/material.dart';

class TabPage extends StatelessWidget {
  const TabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              '& Tuned Out - APP Yahir H.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 0),
        body: Column(
          children: <Widget>[
            Container(
              height: kToolbarHeight,
              decoration: const BoxDecoration(
                color: Colors.pink,
              ),
              child: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.lens, size: 25), text: 'Vinilos'),
                  Tab(
                      icon: Icon(Icons.radio_button_checked, size: 25),
                      text: 'CDs'),
                  Tab(
                      icon: Icon(Icons.view_stream, size: 25),
                      text: 'Cassettes'),
                ],
              ),
            ),
            const Expanded(
              child: Padding(
                padding:
                    EdgeInsets.all(10.0), // Ajusta el valor según sea necesario
                child: TabBarView(
                  children: [
                    TabContent(
                      imagen: 'https://f4.bcbits.com/img/0029619073_10.jpg',
                      titulo: '33.99 USD',
                      subtitulo:
                          'Remastered for vinyl by Angel Hair Audio Gatefold jacket. \nPicture disc LP. \nLyric insert. \nIncludes poster with all new artwork. \nDownload card. \nPicture discs will contain more surface noise than standard vinyl. ',
                    ),
                    TabContent(
                      imagen: 'https://f4.bcbits.com/img/0026633473_10.jpg',
                      titulo: '12.00 USD',
                      subtitulo:
                          'Glass replicated disc in digipak case. \nTotal remix/remaster job by Angel Hair Audio. \nLyric booklet with song specific art by Liz. \n\nIncludes unlimited streaming of April Fools (2021 Mix) via the free Bandcamp app, plus high-quality download in MP3, FLAC and more.',
                    ),
                    TabContent(
                      imagen: 'https://f4.bcbits.com/img/0014998353_10.jpg',
                      titulo: '12 USD',
                      subtitulo:
                          'Dolby noise-reduction. \nTranslucent red shell. \n6 bonus tracks on side B. \nDownload card w/ album commentary by Neil. \nJ-card w/ art by Ming Doyle. \nRemastered by Angel Hair Audio ',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TabContent extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String subtitulo;

  const TabContent({
    super.key,
    required this.imagen,
    required this.titulo,
    required this.subtitulo,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.network(
          imagen,
          height: 200,
        ),
        const SizedBox(height: 20),
        Text(
          titulo,
          style: const TextStyle(
              fontSize: 24, color: Colors.pink, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Text(
          subtitulo,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
