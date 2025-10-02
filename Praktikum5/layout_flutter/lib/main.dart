import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Pulau Kaniungan di Berau Kalimantan Timur',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                const Text(
                  'Biduk - Biduk, Kabupaten Berau, Kalimantan Timur, Indonesia',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
          const Icon(Icons.star, color: Colors.red),
          const SizedBox(width: 4),
          const Text('41', style: TextStyle(fontSize: 16)),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pulau Kaniungan menjadi salah satu pulau terindah yang ada di Kalimantan.'
        'Pulau ini masih sangat terjaga keasliannya dan kondisi alamnya juga masih bersih dan sangat memukau.'
        'Hamparan pasir putih dengan pepohonan yang rimbun menjadi daya tarik tersendiri bagi pulau ini.'
        'Air biru kehijauan sejernih kaca juga menjadi salah satu alasan mengapa orang-orang berkunjung ke tempat ini. '
        'Ketika menginjakkan kaki di tempat ini, kalian akan langsung disambut dengan hamparan pasir putih yang hangat serta embusan angin sejuk yang menerpa.'
        'Selain itu, suasana alam yang asri dan teduh juga akan membuatmu terasa sangat nyaman ketika tiba di tempat ini.'
        '                                                                                  '
        'Oltha Rosyeda Alhaq - 2341720145',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Oltha Rosyeda Alhaq - 2341720145',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
          ),
        body: ListView(
          children: [
            Image.asset(
              'images/PulauKaniungan.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, 
            buttonSection,
            textSection,
          ],
        )
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
