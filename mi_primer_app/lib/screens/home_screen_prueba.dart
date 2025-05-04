import 'package:flutter/material.dart';
import 'package:mi_primer_app/routes/app_routes.dart';

class HomeScreenP extends StatelessWidget {
  const HomeScreenP({super.key});

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Portal Ingeniería de Sistemas'),
        elevation: 0,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(menuOptions[index].icon),
          title: Text(menuOptions[index].name),
          onTap: () {
            Navigator.pushNamed(context, menuOptions[index].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
