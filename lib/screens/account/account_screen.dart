import 'package:flutter/material.dart';
import 'package:oxe_banking/widget/CustomAppBar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  Widget _menuOption({required String title, required IconData iconData}) {
    return InkWell(
      onTap: () {
        print('Clicou em $title');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(
              iconData,
              color: Colors.orange,
              size: 24.0,
            ),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _menuOption(title: 'Abrir conta', iconData: Icons.add_box),
              _menuOption(
                  title: 'Ativar conta no dispositivo',
                  iconData: Icons.device_hub),
              _menuOption(title: 'Perfil', iconData: Icons.person),
              _menuOption(
                  title: 'Gerenciamento de senhas',
                  iconData: Icons.lock_outline),
            ],
          ),
        ),
      ),
    );
  }
}
