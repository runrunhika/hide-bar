import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

  // await SystemChrome.setSystemUIChangeCallback(
  //     (SystemUiOverlayAreVisible) async {
  //   print('CHANGED : $SystemUiOverlayAreVisible');
  // });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("Status Bar & Navigation Bar"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: Size(170, 50),
          ),
          child: Text(
            "Hide Status Bar",
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            SystemChrome.setEnabledSystemUIMode(
            // Pattern 1
            // SystemUiMode.manual,
            //   overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);

            //Pattern 2
            SystemUiMode.immersiveSticky);
          },
        ),
      ),
    );
  }
}
