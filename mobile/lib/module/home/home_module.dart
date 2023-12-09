import 'package:flutter_modular/flutter_modular.dart';
import 'package:hackathon_creasp/module/home/presenter/screens/auth_screen.dart';
import 'package:hackathon_creasp/module/home/presenter/screens/courses_screen.dart';
import 'package:hackathon_creasp/module/home/presenter/screens/home_screen.dart';
import 'package:hackathon_creasp/module/home/presenter/screens/settings_screen.dart';

class HomeModule extends Module {

  @override
  List<Bind> get binds => [

  ];

  @override
  List<ChildRoute> get routes => [
    ChildRoute('/', child: (context, args) => const AuthScreen()),
    ChildRoute('/home', child: (context, args) => const HomeScreen()),
    ChildRoute('/settings', child: (context, args) => const SettingsScreen()),
    ChildRoute('/course', child: (context, args) => const CourseScreen())
  ];
}