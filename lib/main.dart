import 'package:flutter/material.dart';
import 'package:portofolio/views/halamanapertama.dart';
import 'package:portofolio/views/halamandatapersonal.dart';
import 'package:portofolio/views/halamaneditdata.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // FlutterNativeSplash.remove();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HalamanPertama(),
        routes: {
          '/view/halamanpertama': (context) => const HalamanPertama(),
          '/view/halamandatapersonal': (context) => const HalamandataPersonal(),
          '/view/halamaneditdata': (context) => const HalamanEditData(),
        });
  }
}
