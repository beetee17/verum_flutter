import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:verum_flutter/responsive/responsive_layout_screen.dart';
import 'package:verum_flutter/responsive/mobile_screen_layout.dart';
import 'package:verum_flutter/responsive/web_screen_layout.dart';
import 'package:verum_flutter/utils/colors.dart';

const firebaseConfig = {

};
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    // We are running on a browser
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBgzs5CqaJpcmgjXUvmoKBpPR4_1eOJHxs",
        authDomain: "verum-d3504.firebaseapp.com",
        projectId: "verum-d3504",
        storageBucket: "verum-d3504.appspot.com",
        messagingSenderId: "296337442652",
        appId: "1:296337442652:web:8c5d4c58877be20e60a399",
        measurementId: "G-JMMME1G6CE"
      )
    );
  } else {
    await Firebase.initializeApp();
  }
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Verum',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: const ResposiveLayout(
          webScreenLayout: WebScreenLayout(),
          mobileScreenLayout: MobileScreenLayout()),
    );
  }
}
