import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_gf/common/widgets/bottom_bar.dart';
import 'package:test_gf/constants/global_variables.dart';
import 'package:test_gf/features/admin/screens/admin_screen.dart';
import 'package:test_gf/features/auth/screens/auth_screen.dart';
import 'package:test_gf/features/auth/services/auth_service.dart';
import 'package:test_gf/providers/user_provider.dart';
import 'package:test_gf/router.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UserProvider()),
  ], child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AuthService authService = AuthService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Dem',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariables.greyBackgroundColor,
        colorScheme:
            const ColorScheme.light(primary: GlobalVariables.secondaryColor),
        appBarTheme: const AppBarTheme(
            elevation: 0, iconTheme: IconThemeData(color: Colors.green)),
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => generateRoute((settings)),
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? Provider.of<UserProvider>(context).user.type == 'user'
              ? const BottomBar()
              : const AdminScreen()
          : const AuthScreen(),
    );
  }
}
