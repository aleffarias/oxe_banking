import 'package:flutter/material.dart';

import '../../widget/CustomAppBar.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

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
      appBar:
          const CustomAppBar(title: 'Cartão', automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _menuOption(
                  title: 'Solicitar novo (crédito/débito)',
                  iconData: Icons.credit_card,
                  onTap: () {}),
              const Divider(),
              _menuOption(
                  title: 'Bloquear cartão',
                  iconData: Icons.block,
                  onTap: () {}),
              const Divider(),
              _menuOption(
                  title: 'Criar cartão virtual',
                  iconData: Icons.add_circle_outline,
                  onTap: () {}),
              const Divider(),
              _menuOption(
                  title: 'Remover cartão virtual',
                  iconData: Icons.remove_circle_outline,
                  onTap: () {}),
              const Divider(),
              _menuOption(
                  title: 'Fatura (Ajustar limite, Pagar fatura)',
                  iconData: Icons.receipt_long,
                  onTap: () {}),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
