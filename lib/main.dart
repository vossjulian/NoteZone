import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:notezone/app/boundary/pages/auth_wrapper.dart';
import 'package:notezone/app/boundary/pages/crud_page/crud_wrapper_page.dart';
import 'package:notezone/app/boundary/pages/home_wrapper_page/home_wrapper_page.dart';
import 'package:notezone/app/boundary/pages/member_invite_wrapper_page/member_invite_wrapper_page.dart';
import 'package:notezone/app/boundary/pages/profile_wrapper_page/profile_wrapper_page.dart';
import 'package:notezone/app/boundary/pages/project_page/project_wrapper_page.dart';
import 'package:notezone/app/boundary/pages/project_settings_page/project_settings_wrapper_page.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var lightScheme = ColorScheme.fromSeed(
      brightness: Brightness.light,
      seedColor: Colors.yellow,
    );

    var darkScheme = ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.yellow,
    );

    return MaterialApp.router(
      title: "NoteZone",
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("en", ""), // English, no country code
        Locale("de", ""), // German, no country code
      ],
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: lightScheme.surfaceVariant,
        ),
        colorScheme: lightScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          color: darkScheme.surfaceVariant,
        ),
        colorScheme: darkScheme,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const AuthWrapper(),
        routes: <GoRoute>[
          GoRoute(
            routes: const <GoRoute>[],
            path: 'home',
            builder: (context, state) => const HomeWrapperPage(),
          ),
          GoRoute(
            routes: const <GoRoute>[],
            path: 'crud',
            builder: (context, state) => const CRUDWrapperPage(),
          ),
          GoRoute(
            routes: const <GoRoute>[],
            path: 'member_invite',
            builder: (context, state) => const MemberInviteWrapperPage(),
          ),
          GoRoute(
            routes: const <GoRoute>[],
            path: 'profile',
            builder: (context, state) => const ProfileWrapperPage(),
          ),
          GoRoute(
            routes: const <GoRoute>[],
            path: 'project',
            builder: (context, state) => const ProjectWrapperPage(),
          ),
          GoRoute(
            routes: const <GoRoute>[],
            path: 'project_settings',
            builder: (context, state) => const ProjectSettingsWrapperPage(),
          ),
        ],
      ),
    ],
  );
}
