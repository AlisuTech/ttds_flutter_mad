import 'package:flutter/material.dart';
import 'components/single_child_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 5;
  int _selectedMenu = 0;
  String activateTapText = "You have pushed this button";

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
    print("Invoked Increment");
  }

  void activateTap() {
    setState(() {
      activateTapText = "Menu was Tapped";
    });
    // print("Menu Icon was tapped");
  }

  void changeMenu(int selectedMenu) {
    setState(() {
      _selectedMenu = selectedMenu;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: GestureDetector(
            onTap: activateTap,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.blue),
              child: const Text(
                "Pearl",
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    // backgroundColor: Colors.purple,
                    // fontFamily: 'Trajan Pro',
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    fontSize: 30),
              ),
            ),
          ),
        ),
        actions: [
          GestureDetector(onTap: activateTap, child: const Icon(Icons.menu)),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(Icons.camera),
          ),
        ],
        leading: const Icon(
          Icons.android,
          size: 40,
          color: Colors.white,
        ),
        leadingWidth: 10,
        shadowColor: Colors.red,
        centerTitle: true,
        elevation: 0,
      ),
      body: const SingleChildWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        // backgroundColor: Colors.amber,
        isExtended: true,
        child: const Icon(
          Icons.add,
          // color: Colors.green,
        ),
        // elevation: 0,
      ), // This trailing comma makes auto-formatting nicer for build methods.,
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 18,
        currentIndex: _selectedMenu,
        // showSelectedLabels: false,
        // showUnselectedLabels: true,
        onTap: changeMenu,
      ),
      // drawer: ,
      // bottomSheet: ,
      // backgroundColor: Colors.red,
    );
  }
}
