import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget _menuCard({required String title, required IconData iconData}) {
    return Card(
      child: InkWell(
        onTap: () {
          print('Clicou em $title');
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.orange,
              size: 48.0,
            ),
            const SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svg/logo.svg',
                width: 44,
                height: 44,
              ),
              const SizedBox(width: 8),
              Align(
                alignment: const Alignment(-1, 1),
                child: RichText(
                  text: const TextSpan(
                    text: 'Banking',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.exit_to_app),
              color: Colors.white,
              iconSize: 32,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24.0),
        child: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16),
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 1.0,
          children: [
            _menuCard(title: 'Extrato', iconData: Icons.assignment),
            _menuCard(title: 'Transferência', iconData: Icons.sync_alt),
            _menuCard(title: 'Empréstimos', iconData: Icons.monetization_on),
            _menuCard(title: 'Pagamentos', iconData: Icons.currency_exchange),
            _menuCard(
                title: 'Poupança', iconData: Icons.account_balance_wallet),
            _menuCard(title: 'Cartão', iconData: Icons.credit_card),
            _menuCard(title: 'Investimento', iconData: Icons.currency_exchange),
            _menuCard(title: 'Conta', iconData: Icons.account_balance),
          ],
        ),
      ),
    );
  }
}
