import 'package:flutter/material.dart';

import '../../widget/CustomAppBar.dart';

class TransferScreen extends StatelessWidget {
  const TransferScreen({Key? key}) : super(key: key);

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
          const CustomAppBar(title: 'Conta', automaticallyImplyLeading: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _menuOption(title: 'PIX', iconData: Icons.flash_on, onTap: () {}),
              _menuOption(
                  title: 'TED/DOC', iconData: Icons.swap_horiz, onTap: () {}),
              _menuOption(
                  title: 'Receber Transferência',
                  iconData: Icons.download,
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
