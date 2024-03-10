import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:khodari_test/firebase_options.dart';
import 'package:khodari_test/homePage/home.dart';

import 'package:khodari_test/utils/colors.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The blue mill',
      theme: ThemeData(
        primaryColorDark: AppColors.primary ,
      
      ),
      home: const Home(),
    );
  }
}
