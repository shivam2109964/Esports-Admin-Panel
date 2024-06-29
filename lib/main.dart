import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esports_admin/Blocs/Notification_Ser/notification_bloc.dart';
import 'package:esports_admin/firebase_options.dart';
import 'package:esports_admin/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotificationBloc(FirebaseFirestore.instance),
        ),
      ],
      child: const MaterialApp(
        home: HomePage()
      ),
    );
  }
}
