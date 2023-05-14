import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:doctor_pert/firebase_options.dart';
import 'package:doctor_pert/handler/authentication_handler.dart';
import 'package:doctor_pert/handler/user_data_handler.dart';
import 'package:doctor_pert/navigation/routing.dart';
import 'package:doctor_pert/screens/authentication/authentication_screen.dart';
import 'package:doctor_pert/screens/authentication/login_screen.dart';
import 'package:doctor_pert/screens/authentication/sign_up_screen.dart';
import 'package:doctor_pert/screens/home_screen/home_screen.dart';
import 'package:doctor_pert/theme/theme_data.dart';
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
    initRecaptcha();
  }
  FirebaseFirestore.instance.settings = const Settings(
    persistenceEnabled: true,
  );

  runApp(MaterialApp(
    theme: lightTheme,
    builder: (context, child) => const App(),
  ));
}

class App extends StatelessWidget {
  const App({super.key});

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
                    theme: lightTheme);
              }
            }));
  }
}
