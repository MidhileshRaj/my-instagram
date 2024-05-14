import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myinstagram/firebase_options.dart';
import 'package:myinstagram/utils/colors.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram clone',
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor
      ),
      // home: const ,
    );
  }
}
