import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_pert/firebase_options.dart';
import 'package:doctor_pert/handler/user_data_handler.dart';
import 'package:doctor_pert/navigation/routing.dart';
import 'package:doctor_pert/screens/home_screen/home_screen.dart';
import 'package:doctor_pert/theme/color_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FirebaseAuth.instance.authStateChanges().listen((User? user) async {
    if (user == null) {
      print('User is currently signed out!');
    } else {
      print('User is signed in!');
    }
  });

  if (kIsWeb) {
    FirebaseAuth.instance.setPersistence(Persistence.LOCAL);
  }
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );

  runApp(MaterialApp(
    theme: themeData,
    builder: (context, child) => const HomeScreen(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

  static const double defaultRadius = 10;
  static const double defaultMargin = 30;
  static const double defaultBoxMargin = 20;
  static const EdgeInsets defaultPadding =
      EdgeInsets.symmetric(horizontal: 20, vertical: 35);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => UserData(),
            lazy: true,
          ),
        ],
        child: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const CircularProgressIndicator.adaptive();
              } else {
                /*User? user = snapshot.data;
                if (user != null && user.emailVerified) {
                  context.read<FirestoreHandler>().fetchData(user);
                }*/
                return MaterialApp.router(
                    routerConfig: router,
                    debugShowCheckedModeBanner: false,
                    title: "Doctor Pert",
                    theme: themeData);
              }
            }));
  }
}
