
import 'package:flutter/material.dart';
import 'package:mi_primer_app/models/menu_options.dart'; // Asegúrate que este import esté correctamente configurado
import 'package:mi_primer_app/screens/screens.dart';
class AppRoutes {
  static const initialRoute = 'HomeP';

  static final menuOptions = <MenuOptions>[
    MenuOptions(route: 'home', name: 'Home', screen: HomeScreen(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'home2', name: 'Home2', screen: HomeScreen(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'biblioteca', name: 'Biblioteca', screen: Biblioteca(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'foros', name: 'Foros', screen: Foros(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'pensum', name: 'Pensum', screen: Pensum(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'informacion', name: 'Información', screen: Informaciones(), icon: Icons.add_ic_call_outlined),
    MenuOptions(route: 'repositorio', name: 'Repositorio', screen: Repositorios(), icon: Icons.add_ic_call_outlined),
  ];
    /*static Map<String, Widget Function(BuildContext)> routes = {
    
   'HomeP': (BuildContext context) => const HomeScreenP(),
        'Home': (BuildContext context) => HomeScreen(),
        'biblioteca': (BuildContext context) => Biblioteca(),
        'foros': (BuildContext context) => Foros(),
        'informaciones': (BuildContext context) => Informaciones(),
        'pensum': (BuildContext context) => Pensum(),
        'repositorios': (BuildContext context) => Repositorios(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreenP(),
    );*/

  // Mapeo automático de rutas a partir del menú
  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {
      'HomeP': (BuildContext context) => const HomeScreenP(), // Ruta inicial
    };

    for (final option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }

    return appRoutes;
  }

  // Ruta por defecto (fallback)
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreenP(),
    );
  }
}
