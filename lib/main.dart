import 'package:flutter/material.dart';
import 'package:hernandez/tabbar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '& Tuned Out',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const HomePage(),
    const TabPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Inicio',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.tab, size: 30),
            label: 'Tabs',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            '& Tuned Out - APP Yahir H.',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0),
      drawer: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text('NOMBRE DE USUARIO',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                accountEmail: const Text('usuario@example.com',
                    style: TextStyle(fontSize: 20)),
                currentAccountPicture: const CircleAvatar(
                  child: Icon(Icons.person),
                ),
                decoration: BoxDecoration(
                  color: Colors.pink[300],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home, color: Colors.pink, size: 35),
                title: const Text(
                  'Inicio',
                  style: TextStyle(color: Colors.pink, fontSize: 20),
                ),
                onTap: () {
                  // Navegar a la página de inicio
                },
              ),
              ListTile(
                leading:
                    const Icon(Icons.favorite, color: Colors.pink, size: 35),
                title: const Text(
                  'Favoritos',
                  style: TextStyle(color: Colors.pink, fontSize: 20),
                ),
                onTap: () {
                  // Navegar a la página de favoritos
                },
              ),
              ListTile(
                leading:
                    const Icon(Icons.settings, color: Colors.pink, size: 35),
                title: const Text(
                  'Configuración',
                  style: TextStyle(color: Colors.pink, fontSize: 20),
                ),
                onTap: () {
                  // Navegar a la página de configuración
                },
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: ListTile(
                    leading:
                        const Icon(Icons.logout, color: Colors.pink, size: 30),
                    title: const Text(
                      'Cerrar sesión',
                      style: TextStyle(color: Colors.pink, fontSize: 15),
                    ),
                    onTap: () {
                      // Cerrar sesión
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.pink,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              alignment: Alignment.center, // Centra el contenido en el centro
              child: const Text(
                'Hernández García Yahir Hiram',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.pink, width: 4),
                  bottom: BorderSide(color: Colors.pink, width: 4),
                ),
              ),
              child: Image.network(
                'https://scontent.fcjs4-1.fna.fbcdn.net/v/t1.15752-9/346144577_1308498766761306_4535493764594358099_n.png?_nc_cat=107&ccb=1-7&_nc_sid=ae9488&_nc_eui2=AeEgjbV9oYMITAbrUnZJaDU2E24BCmnNNn0TbgEKac02fRiVAGUXMhJSUVUrBw05z-M9fEyPzdFTtlM2F_XdXptB&_nc_ohc=6vMnV8mYQ-gAX8_BfES&_nc_ht=scontent.fcjs4-1.fna&oh=03_AdRUN08VQzzL32d4TDxUCvSsqrgM1MUKziE1iW9_nekHkQ&oe=648C9C52',
                height: 300,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.pink,
                  width: 4,
                ),
              ),
              alignment: Alignment.center, // Centra el contenido en el centro
              child: const Text(
                '6toJ - Programación',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
