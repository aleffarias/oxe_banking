import 'package:flutter/material.dart';

import '../../widget/CustomAppBar.dart';

class SavingsScreen extends StatelessWidget {
  const SavingsScreen({Key? key}) : super(key: key);

  Widget _menuOption(
      {required String title,
      required IconData iconData,
      required Function onTap}) {
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
      appBar: const CustomAppBar(
          title: 'Poupança', automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _menuOption(
                  title: 'Investir Valor',
                  iconData: Icons.attach_money,
                  onTap: () {}),
              const Divider(),
              _menuOption(
                  title: 'Resgatar Valor',
                  iconData: Icons.money_off,
                  onTap: () {}),
              const Divider(),
              _menuOption(
                  title: 'Valor Investido',
                  iconData: Icons.bar_chart,
                  onTap: () {}),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
