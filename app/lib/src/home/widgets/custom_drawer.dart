import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      onDestinationSelected: (value) {
        if (value == 1) {
          Modular.to.pop();
          Modular.to.pushNamed('/config');
        }
      },
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 18),
          child: Text(
            'Opções',
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.sync),
          label: Row(
            children: [
              Text(
                'Sincronizar',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(width: 10),
              Text(
                '28/02/2023 às 19:36h',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
        ),
        NavigationDrawerDestination(
          icon: const Icon(Icons.settings),
          label: Text(
            'Configurações',
            style: Theme.of(context).textTheme.labelLarge,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(),
        ),
      ],
    );
  }
}
